output "instrumentation_key" {
  value = azurerm_application_insights.app_insights.instrumentation_key
}

output "id" {
  value = azurerm_application_insights.app_insights.app_id
}

output "name" {
  value = azurerm_application_insights.app_insights.name
}

output "connection_string" {
  value = azurerm_application_insights.app_insights.connection_string
}
