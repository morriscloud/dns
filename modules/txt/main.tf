terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

variable "zone_id" {
  type = string
}

variable "name" {
  type = string
}

variable "value" {
  type = string
}

resource "cloudflare_record" "this" {
  zone_id = var.zone_id
  name    = var.name
  value   = var.value
  type    = "TXT"
}
