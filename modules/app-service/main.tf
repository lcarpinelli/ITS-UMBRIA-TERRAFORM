# resource "azurerm_windows_web_app" "web_app" {
#   name                = var.app_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   service_plan_id     = var.service_plan_id
#   https_only          = true
#   public_network_access_enabled = false

#   identity {
#     type = "SystemAssigned"
#   }
#   site_config {
#     application_stack {
#       current_stack  = var.current_stack
#       dotnet_version = var.dotnet_versione
#     }
#     minimum_tls_version = "1.2"
#   }
#   app_settings = {
#     "APPINSIGHTS_INSTRUMENTATIONKEY"             = "${var.application_insight_key}"
#     "ApplicationInsightsAgent_EXTENSION_VERSION" = "~4"
#     "AzureWebJobsStorage"                        = "${var.storage_connection_string}"
#     AzureAiServicesConfiguration__Endpoint       = "${var.azure_ai_services_endpoint}"
#     AzureAiServicesConfiguration__Key            = "${var.azure_ai_services_key}"
#   }
# }
resource "azurerm_windows_web_app" "web_app" {
  name                          = var.app_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  service_plan_id               = var.service_plan_id
  https_only                    = true
  public_network_access_enabled = true

  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_stack {
      current_stack  = var.current_stack
      dotnet_version = var.dotnet_versione
    }
    minimum_tls_version = "1.2"

    # ip_restriction {
    #   name                      = "subnetStorage"
    #   priority                  = 100
    #   virtual_network_subnet_id = var.subnet_st_id
    #   action                    = "Allow"
    # }

    # ip_restriction {
    #   name                      = "subnetAIServices"
    #   priority                  = 110
    #   virtual_network_subnet_id = var.subnet_ai_id
    #   action                    = "Allow"
    # }

    # ip_restriction {
    #   name                      = "subnetStaticWeb"
    #   priority                  = 120
    #   virtual_network_subnet_id = var.subnet_stwa_id
    #   action                    = "Allow"
    # }

  }

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY                  = "${var.application_insight_key}"
    APPLICATIONINSIGHTS_CONNECTION_STRING           = "${var.application_insight_connection_string}"
    ApplicationInsightsAgent_EXTENSION_VERSION      = "~4"
    ASPNETCORE_ENVIRONMENT = "Development"
  }
}
