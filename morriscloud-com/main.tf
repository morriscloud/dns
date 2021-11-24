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
      name = "dns-morriscloud-com"
    }
  }
}

provider "cloudflare" {
}

locals {
  argo_tunnel = "0d8c0bc5-bdaa-4c17-9995-5b59902aa138.cfargotunnel.com"
}

data "cloudflare_zone" "this" {
  name = "morriscloud.com"
}

resource "cloudflare_record" "analytics" {
  zone_id = data.cloudflare_zone.this.zone_id
  name    = "analytics"
  value   = local.argo_tunnel
  type    = "CNAME"
  proxied = true
}
