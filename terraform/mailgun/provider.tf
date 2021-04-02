terraform {
  required_version = ">= 0.12.0"
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    local = ">= 1.2"
  }
}

provider "digitalocean" {
  token = var.do_token
}

provider "mailgun" {
  api_key = var.mailgun_api_key
}

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}