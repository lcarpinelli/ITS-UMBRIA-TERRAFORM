output "name" {
    value = azurerm_cognitive_account.ai_services.name
}

output "id" {
  value = azurerm_cognitive_account.ai_services.id
}

output "endpoint" {
  value = azurerm_cognitive_account.ai_services.endpoint
}

output "primary_access_key" {
  value = azurerm_cognitive_account.ai_services.primary_access_key
  sensitive = true
}