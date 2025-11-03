output "connection_string" {
    value     = "DefaultEndpointsProtocol=https;AccountName=${azurerm_storage_account.storage_account.name};AccountKey=${azurerm_storage_account.storage_account.primary_access_key};EndpointSuffix=core.windows.net"
    sensitive = true
}

output "name" {
    value = azurerm_storage_account.storage_account.name
}

output "id" {
  value = azurerm_storage_account.storage_account.id
}