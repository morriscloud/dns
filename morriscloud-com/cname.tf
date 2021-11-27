locals {
  cnames = [{
    id      = "analytics,"
    name    = "analytics"
    value   = local.argo_tunnel
    proxied = true
    }, {
    name    = "aws-terraform-static",
    name    = "aws-terraform-static",
    value   = "aws-terraform-static.morriscloud.com.s3-website.us-east-2.amazonaws.com",
    proxied = true
    }, {
    id      = "backup",
    name    = "backup",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "blog",
    name    = "blog",
    value   = "tony-talks-tech.ghost.io",
    proxied = false
    }, {
    id      = "calendar",
    name    = "calendar",
    value   = "ghs.googlehosted.com",
    proxied = true
    }, {
    id      = "cloverleaftrack",
    name    = "cloverleaftrack",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "_domainconnect",
    name    = "_domainconnect",
    value   = "_domainconnect.gd.domaincontrol.com",
    proxied = false
    }, {
    id      = "download",
    name    = "download",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "family",
    name    = "family",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "family-setup",
    name    = "family-setup",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "grocy",
    name    = "grocy",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "launch",
    name    = "launch",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "mail",
    name    = "mail",
    value   = "ghs.googlehosted.com",
    proxied = true
    }, {
    id      = "movies",
    name    = "movies",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "mysql",
    name    = "mysql",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "nas",
    name    = "nas",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "photos",
    name    = "photos",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "portainer",
    name    = "portainer",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "ssh",
    name    = "ssh",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "til",
    name    = "til",
    value   = "afmorris.github.io",
    proxied = true
    }, {
    id      = "tv",
    name    = "tv",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "wiki",
    name    = "wiki",
    value   = local.argo_tunnel,
    proxied = true
    }, {
    id      = "workout",
    name    = "workout",
    value   = local.argo_tunnel,
    proxied = true
  }]
}
