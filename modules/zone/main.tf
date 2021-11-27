terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

variable "domain" {
  type = string
}

resource "cloudflare_zone" "this" {
  zone = var.domain
}

output "id" {
  value = cloudflare_zone.this.id
}
