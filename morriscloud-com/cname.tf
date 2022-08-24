locals {
  cnames = [{
    name    = "aws-terraform-static",
    name    = "aws-terraform-static",
    value   = "aws-terraform-static.morriscloud.com.s3-website.us-east-2.amazonaws.com",
    proxied = true
    }, {
    id      = "blog",
    name    = "blog",
    value   = "tony-talks-tech.ghost.io",
    proxied = false
    }, {
    id      = "_domainconnect",
    name    = "_domainconnect",
    value   = "_domainconnect.gd.domaincontrol.com",
    proxied = false
    }, {
    id      = "til",
    name    = "til",
    value   = "afmorris.github.io",
    proxied = true
    }]
}
