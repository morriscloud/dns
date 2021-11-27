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

variable "allow_overwrite" {
  type = bool
}

variable "priority" {
  type = number
}

resource "cloudflare_record" "this" {
  zone_id         = var.zone_id
  name            = var.name
  value           = var.value
  allow_overwrite = var.allow_overwrite
  priority        = var.priority
  type            = "MX"
}
