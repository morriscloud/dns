terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3"
    }
  }

  backend "remote" {
    organization = "morriscloud"

    workspaces {
      name = "dns-morriscloud-com"
    }
  }
}

provider "cloudflare" {
}

locals {
  argo_tunnel = "0d8c0bc5-bdaa-4c17-9995-5b59902aa138.cfargotunnel.com"
  domain      = "morriscloud.com"
}

module "zone" {
  source = "../modules/zone"

  domain = local.domain

  providers = {
    cloudflare = cloudflare
  }
}

module "cname" {
  for_each = { for cname in local.cnames : cname.name => cname }
  source   = "../modules/cname"

  zone_id = module.zone.id
  name    = each.value.name
  value   = each.value.value
  proxied = each.value.proxied
}

module "mx" {
  for_each = { for mx in local.mx : mx.id => mx }
  source   = "../modules/mx"

  zone_id         = module.zone.id
  name            = each.value.name
  value           = each.value.value
  allow_overwrite = each.value.allow_overwrite
  priority        = each.value.priority
}

module "txt" {
  for_each = { for txt in local.txt : txt.id => txt }
  source   = "../modules/txt"

  zone_id = module.zone.id
  name    = each.value.name
  value   = each.value.value
}
