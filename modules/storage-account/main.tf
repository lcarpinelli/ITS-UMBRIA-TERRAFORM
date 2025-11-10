resource "azurerm_storage_account" "storage_account" {
  name                          = lower(var.name)
  resource_group_name           = var.resource_group_name
  location                      = var.location
  account_tier                  = var.account_tier
  account_replication_type      = var.account_replication_type
  public_network_access_enabled = var.public_network_access_enabled
  https_traffic_only_enabled    = var.https_traffic_only_enabled
  min_tls_version               = var.min_tls_version
  access_tier                   = var.access_tier
  account_kind                  = var.account_kind

  blob_properties {
    delete_retention_policy {
      days = 7
    }

    container_delete_retention_policy {
      days = 7
    }
  }

  # network_rules {
  #   default_action             = "Deny"
  #   bypass                     = ["AzureServices"]
  #   virtual_network_subnet_ids = [var.subnet_app_id, var.subnet_ai_id, var.subnet_stwa_id]
  # }
}
