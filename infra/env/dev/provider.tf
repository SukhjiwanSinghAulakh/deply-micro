terraform {
  required_version = "= 1.14.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-stage"
    storage_account_name = "stddev18102026"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {

  }
}