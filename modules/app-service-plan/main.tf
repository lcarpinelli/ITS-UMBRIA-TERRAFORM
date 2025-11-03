resource "azurerm_service_plan" "app_service_plan" {
  name                = var.plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.plan_os_type
  sku_name            = var.plan_sku
}