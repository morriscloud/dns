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

variable "argo_tunnel" {
  type = string
}

resource "cloudflare_zone" "this" {
  zone = "morriscloud.com"
}

resource "cloudflare_record" "analytics" {
  zone_id = cloudflare_zone.this.id
  name    = "analytics"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "aws_terraform_static" {
  zone_id = cloudflare_zone.this.id
  name    = "aws-terraform-static"
  value   = "aws-terraform-static.morriscloud.com.s3-website.us-east-2.amazonaws.com"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "backup" {
  zone_id = cloudflare_zone.this.id
  name    = "backup"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "blog" {
  zone_id = cloudflare_zone.this.id
  name    = "blog"
  value   = "tony-talks-tech.ghost.io"
  type    = "CNAME"
}

resource "cloudflare_record" "calendar" {
  zone_id = cloudflare_zone.this.id
  name    = "calendar"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "cloverleaftrack" {
  zone_id = cloudflare_zone.this.id
  name    = "cloverleaftrack"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "domainconnect" {
  zone_id = cloudflare_zone.this.id
  name    = "_domainconnect"
  value   = "_domainconnect.gd.domaincontrol.com"
  type    = "CNAME"
}

resource "cloudflare_record" "download" {
  zone_id = cloudflare_zone.this.id
  name    = "download"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "family" {
  zone_id = cloudflare_zone.this.id
  name    = "family"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "family_setup" {
  zone_id = cloudflare_zone.this.id
  name    = "family-setup"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "grocy" {
  zone_id = cloudflare_zone.this.id
  name    = "grocy"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "launch" {
  zone_id = cloudflare_zone.this.id
  name    = "launch"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "mail" {
  zone_id = cloudflare_zone.this.id
  name    = "mail"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "movies" {
  zone_id = cloudflare_zone.this.id
  name    = "movies"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "mysql" {
  zone_id = cloudflare_zone.this.id
  name    = "mysql"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "nas" {
  zone_id = cloudflare_zone.this.id
  name    = "nas"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "photos" {
  zone_id = cloudflare_zone.this.id
  name    = "photos"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "portainer" {
  zone_id = cloudflare_zone.this.id
  name    = "portainer"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "setup_family" {
  zone_id = cloudflare_zone.this.id
  name    = "setup.family"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "ssh" {
  zone_id = cloudflare_zone.this.id
  name    = "ssh"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "stash" {
  zone_id = cloudflare_zone.this.id
  name    = "stash"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "til" {
  zone_id = cloudflare_zone.this.id
  name    = "til"
  value   = "afmorris.github.io"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "tv" {
  zone_id = cloudflare_zone.this.id
  name    = "tv"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "wiki" {
  zone_id = cloudflare_zone.this.id
  name    = "wiki"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "workout" {
  zone_id = cloudflare_zone.this.id
  name    = "workout"
  value   = var.argo_tunnel
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "mx1" {
  zone_id         = cloudflare_zone.this.id
  name            = "morriscloud.com"
  value           = "alt1.aspmx.l.google.com"
  type            = "MX"
  allow_overwrite = false
  priority        = 5
}

resource "cloudflare_record" "mx2" {
  zone_id         = cloudflare_zone.this.id
  name            = "morriscloud.com"
  value           = "alt2.aspmx.l.google.com"
  type            = "MX"
  allow_overwrite = false
  priority        = 5
}

resource "cloudflare_record" "mx3" {
  zone_id         = cloudflare_zone.this.id
  name            = "morriscloud.com"
  value           = "alt3.aspmx.l.google.com"
  type            = "MX"
  allow_overwrite = false
  priority        = 10
}

resource "cloudflare_record" "mx4" {
  zone_id         = cloudflare_zone.this.id
  name            = "morriscloud.com"
  value           = "alt4.aspmx.l.google.com"
  type            = "MX"
  allow_overwrite = false
  priority        = 10
}

resource "cloudflare_record" "mx" {
  zone_id         = cloudflare_zone.this.id
  name            = "morriscloud.com"
  value           = "aspmx.l.google.com"
  type            = "MX"
  allow_overwrite = false
  priority        = 1
}

resource "cloudflare_record" "github_challenge" {
  zone_id = cloudflare_zone.this.id
  name    = "_github-challenge-morriscloud"
  value   = "c7e290df87"
  type    = "TXT"
}

resource "cloudflare_record" "google_site_verification1" {
  zone_id = cloudflare_zone.this.id
  name    = "morriscloud.com"
  value   = "google-site-verification=GjuF15LAzey15cxzinQ6Ucqo3ic3QmRNbuBztv16mkw"
  type    = "TXT"
}

resource "cloudflare_record" "google_site_verification2" {
  zone_id = cloudflare_zone.this.id
  name    = "morriscloud.com"
  value   = "google-site-verification=ahLYm39snQpGC4F4zeREsjfelvVBdIFoQy9ZORqVhY0"
  type    = "TXT"
}
