output "id" {
    value = {for key, zone in azurerm_private_dns_zone.private_dns_zone : key => zone.id}
}


output "name" {
    value = {for key, zone in azurerm_private_dns_zone.private_dns_zone : key => zone.name}
}