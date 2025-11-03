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

    ip_restriction {
      name                      = "subnetStorage"
      priority                  = 100
      virtual_network_subnet_id = var.subnet_st_id
      action                    = "Allow"
    }

    ip_restriction {
      name                      = "subnetAIServices"
      priority                  = 110
      virtual_network_subnet_id = var.subnet_ai_id
      action                    = "Allow"
    }

    ip_restriction {
      name                      = "subnetStaticWeb"
      priority                  = 120
      virtual_network_subnet_id = var.subnet_stwa_id
      action                    = "Allow"
    }

  }

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY                  = "${var.application_insight_key}"
    APPLICATIONINSIGHTS_CONNECTION_STRING           = "${var.application_insight_connection_string}"
    ApplicationInsightsAgent_EXTENSION_VERSION      = "~4"
    AzureAiServicesConfiguration__Endpoint          = "${var.azure_ai_services_endpoint}"
    AzureAiServicesConfiguration__Key               = "${var.azure_ai_services_key}"
    AzureBlobStorageConfiguration__ConnectionString = "${var.storage_connection_string}"
    AzureBlobStorageConfiguration__ContainerName    = "loacker-container-photo"
    AzureStaticWebAppEndpoint                       = "${var.azure_static_wa_endpoint}"
    CustomVisionConfiguration__Endpoint             = "${var.azure_ai_services_endpoint}"
    CustomVisionConfiguration__PredictionKey        = "${var.azure_ai_services_key}"
    CustomVisionConfiguration__PredictionKey        = "${var.azure_ai_services_key}"
    CustomVisionConfiguration__ModelNameBlue        = "loacker_blue.v.1.0"
    CustomVisionConfiguration__ModelNameCheckColor  = "loacker_checkcolor.v.1.0"
    CustomVisionConfiguration__ModelNameRed         = "loacker_red.v.1.0"
    CustomVisionConfiguration__ProjectIdBlue        = "0ad6fb99-37aa-4a29-81d2-51d375d5eae3"
    CustomVisionConfiguration__ProjectIdCheckColor  = "f3a5f685-0be1-4f69-9f14-29bade89b3e3"
    CustomVisionConfiguration__ProjectIdRed         = "be851bc7-449f-40bc-9b38-dfdba5485581"
    ASPNETCORE_ENVIRONMENT = "Development"
  }
}
