variable "azure_ai_services_name" {
    description = "The name of the Azure AI Services resource."
    type        = string
}

variable "location" {
    description = "The Azure region where the AI Services resource will be created."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the AI Services resource."
    type        = string
}

variable "sku_name" {
    description = "The SKU name for the Azure AI Services resource."
    type        = string
    default = "S0"
}

variable "kind" {
    description = "The kind of the Azure AI Services resource."
    type        = string
    default     = "CognitiveServices"
}

# variable "subnet_st_id" {
#     description = "The ID of the subnet associated with the Storage Account resource."
#     type        = string
# }

# variable "subnet_app_id" {
#     description = "The ID of the subnet associated with the App Service resource."
#     type        = string
# }

# variable "subnet_stwa_id" {
#     description = "The ID of the subnet associated with the Static Web App resource."
#     type        = string
# }