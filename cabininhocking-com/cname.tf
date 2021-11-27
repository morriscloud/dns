locals {
  cnames = [{
    id      = "redirect",
    name    = "cabininhocking.com",
    value   = "cedarpinescabins.com",
    proxied = true
    }, {
    id      = "www"
    name    = "www",
    value   = "cabininhocking.com",
    proxied = true
  }]
}
