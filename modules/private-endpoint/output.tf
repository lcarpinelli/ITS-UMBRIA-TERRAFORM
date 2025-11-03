output "ip" {
    value = azurerm_private_endpoint.private_endpoint.private_service_connection[0].private_ip_address
}

output "id" {
    value = azurerm_private_endpoint.private_endpoint.id
}

output "name" {
  value = azurerm_private_endpoint.private_endpoint.name
}
