//------------------------------------------------------------------------------------------------------
// Resource Group
//------------------------------------------------------------------------------------------------------
# Resource group esistente
data "azurerm_resource_group" "rg" {
  name = "rg-its" # <-- metti il nome del RG esistente
}

//------------------------------------------------------------------------------------------------------
// Storage Account ESEMPIO DI COME SI USA UN MODULO
//------------------------------------------------------------------------------------------------------
module "storage_account" {
  source              = "../../modules/storage-account"
  resource_group_name = azurerm_resource_group.rg.name
  name                = local.storage_account_name
  location            = var.location
}