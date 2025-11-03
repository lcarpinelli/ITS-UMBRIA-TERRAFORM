output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  description = "The IDs of the created subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.id }
}

output "subnet_names" {
  description = "The Names of the created subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.name }
}