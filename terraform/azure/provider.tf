terraform {
  required_version = ">= 0.12.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.46.1"
    }
    local = ">= 1.2"
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}