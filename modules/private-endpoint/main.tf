resource "azurerm_private_endpoint" "private_endpoint" {
  name                = "${var.name}-private-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.name}-connection"
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names              = [var.subresource_name]
    is_manual_connection           = false
  }

  private_dns_zone_group {
    name                 = "${var.name}-pe-group"
    private_dns_zone_ids = [var.private_dns_zone_id]
  }
}
