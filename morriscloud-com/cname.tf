locals {
  cnames = [{
    id = "aws-pulumi-static"
    name = "aws-pulumi-static",
    value = "aws-pulumi-static.morriscloud.com.s3-website-us-east-1.amazonaws.com"
    proxied = true
  }, {
    id    = "aws-terraform-static",
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
