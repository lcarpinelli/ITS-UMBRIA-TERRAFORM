variable "private_dns_zone_name" {
    description = "A map of private DNS zone names to create."
    type        = map(object({
        name = string
    }))
    default = {
        app_service = { name = "privatelink.azurewebsites.net" }
        storage_account = { name = "privatelink.blob.core.windows.net" } 
        ai_services = { name = "privatelink.cognitiveservices.azure.us" }
        static_web_app = { name = "privatelink.azurestaticapps.net" }
    }
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the Private DNS Zones."
    type        = string
}

variable "vnet_id" {
    description = "The ID of the Virtual Network to link to the Private DNS Zone."
    type        = string
}