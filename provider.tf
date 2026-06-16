terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "fc5eee06-dabf-4613-b014-9190e49dc2bb"
}