output "name" {
  value = azurerm_static_web_app.static_web_app.name
}

output "id" {
  value = azurerm_static_web_app.static_web_app.id
}
output "endpoint" {
  value = "https://${azurerm_static_web_app.static_web_app.default_host_name}"
}