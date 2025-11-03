resource "azurerm_private_dns_a_record" "dns_record" {
  name                = lower("${var.name}-record")
  zone_name           = var.dns_zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = [var.private_endpoint_ip]
}