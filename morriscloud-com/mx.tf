locals {
  mx = [{
    id              = "mx1",
    name            = "morriscloud.com",
    value           = "isaac.mx.cloudflare.net",
    allow_overwrite = false,
    priority        = 41
    }, {
    id              = "mx2",
    name            = "morriscloud.com",
    value           = "linda.mx.cloudflare.net",
    allow_overwrite = false,
    priority        = 94
    }, {
    id              = "mx3",
    name            = "morriscloud.com",
    value           = "amir.mx.cloudflare.net",
    allow_overwrite = false,
    priority        = 68
    }]
}
