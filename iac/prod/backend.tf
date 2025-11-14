terraform {
  backend "azurerm" {
    resource_group_name  = "RESOURCE-GROUP-FOR-STATE" //MODIFICARE
    storage_account_name = "STORAGE-ACCOUNT-FOR-STATE" //MODIFICARE
    container_name       = "tfstate" //MODIFICARE
    key                  = "prod.its.tfstate" //MODIFICARE
  }
}
