terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.16.0"
    }
  }
  required_version = ">= 1.1.0"
}
provider "azurerm" {
  features {}
  subscription_id = "SUBSCRIPTION-ID" //MODIFICARE
}