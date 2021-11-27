terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.4.0"
    }
  }

  backend "remote" {
    organization = "morriscloud"

    workspaces {
      name = "dns-cedarpinescabins-com"
    }
  }
}

provider "cloudflare" {
}

locals {
  domain = "cedarpinescabins.com"
}

module "zone" {
  source = "../modules/zone"

  domain = local.domain

  providers = {
    cloudflare = cloudflare
  }
}

module "cname" {
  for_each = { for cname in local.cnames : cname.id => cname }
  source   = "../modules/cname"

  zone_id = module.zone.id
  name    = each.value.name
  value   = each.value.value
  proxied = each.value.proxied

  providers = {
    cloudflare = cloudflare
  }
}

module "mx" {
  for_each = { for mx in local.mx : mx.id => mx }
  source   = "../modules/mx"

  zone_id         = module.zone.id
  name            = each.value.name
  value           = each.value.value
  allow_overwrite = each.value.allow_overwrite
  priority        = each.value.priority

  providers = {
    cloudflare = cloudflare
  }
}

module "txt" {
  for_each = { for txt in local.txt : txt.id => txt }
  source   = "../modules/txt"

  zone_id = module.zone.id
  name    = each.value.name
  value   = each.value.value

  providers = {
    cloudflare = cloudflare
  }
}
