resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnets" {
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value.address_prefix]
  

  service_endpoints = each.value.service_endpoints
  dynamic "delegation" {
    for_each = each.value.delegation_name != null ? [each.value.delegation_name] : []
    content {
      name = each.value.delegation_name
      service_delegation {
        name = each.value.service_delegation
      }
    }
  }
}