resource "azurerm_cognitive_account" "ai_services" {
  name                          = var.azure_ai_services_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  kind                          = var.kind
  sku_name                      = var.sku_name
  custom_subdomain_name         = var.azure_ai_services_name
  public_network_access_enabled = true
  identity {
    type = "SystemAssigned"
  }
  network_acls {
    default_action = "Deny"
    ip_rules       = []
    virtual_network_rules {
      subnet_id = var.subnet_app_id
    }
    virtual_network_rules {
      subnet_id = var.subnet_st_id
    }
    virtual_network_rules {
      subnet_id = var.subnet_stwa_id
    }
  }
}
