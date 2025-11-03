resource "azurerm_private_dns_zone" "private_dns_zone" {
  for_each = var.private_dns_zone_name
  name                = each.value.name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "private_link" {
    for_each = var.private_dns_zone_name
    name                  = "private-link"
    resource_group_name   = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone[each.key].name
    virtual_network_id    = var.vnet_id
    depends_on            = [azurerm_private_dns_zone.private_dns_zone]
}