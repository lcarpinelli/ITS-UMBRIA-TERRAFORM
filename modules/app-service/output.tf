output "id" {
  value = azurerm_windows_web_app.web_app.id
}

output "name" {
  value = azurerm_windows_web_app.web_app.name
}

output "principal_id" {
  value = azurerm_windows_web_app.web_app.identity[0].principal_id
}