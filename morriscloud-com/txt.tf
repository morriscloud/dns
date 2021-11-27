locals {
  txt = [{
    id    = "github-challenge",
    name  = "_github-challenge-morriscloud",
    value = "c7e290df87"
    }, {
    id    = "google-site-verification1",
    name  = "morriscloud.com",
    value = "google-site-verification=GjuF15LAzey15cxzinQ6Ucqo3ic3QmRNbuBztv16mkw"
    }, {
    id    = "google-site-verification2",
    name  = "morriscloud.com",
    value = "google-site-verification=ahLYm39snQpGC4F4zeREsjfelvVBdIFoQy9ZORqVhY0"
    }, {
    id    = "spf",
    name  = "morriscloud.com",
    value = "v=spf1 include:_spf.google.com ~all"
    }, {
    id    = "dmarc",
    name  = "_dmarc",
    value = "v=DMARC1; p=none; rua=mailto:tony@morriscloud.com"
    }, {
    id    = "dkim",
    name  = "google._domainkey",
    value = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlfaUPCv+GHceNOqFUntQK1ZjWQqpxDJ+YZ0HOrbUf2AOuyLzxpwzYAFQpGrrA/osGxhOU6r0C/h01h9KUhOHqiI2BxPU5n/81EF5sXecAupY5PfyWeY9WCo7YU5yhi2JtBp2DHorQuxT3YHw8mEjAJRc+IQZrYOFGTMEKaNcqKi/JHhfFgHL98ePeLmAgjVY/X0ajVE0IwrRGmF5zdf+0XEtBf99PvyujgAKurWeMJvFvx52S6Pd+HbKeKSRME590pKfRGPxvhoKJBSiaDoZRL068ZDQnxz9DMNN8MvCp5dGAXb9v1xYq6EYJrXs5y/WSisP1p2VbsOmPl/O9mQWZQIDAQAB"
  }]
}
