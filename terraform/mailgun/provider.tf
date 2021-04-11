terraform {
  required_version = ">= 0.12.0"
    local = ">= 1.2"
  }
}

provider "mailgun" {
  api_key = var.mailgun_api_key
}

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}