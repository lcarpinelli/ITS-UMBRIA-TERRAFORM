variable "name" {
    description = "The name of the storage account"
    type        = string
}

variable "account_tier" {
    description = "The storage account tier"
    type        = string
    default     = "Standard"
}

variable "account_replication_type" {
    description = "The replication type for the storage account"
    type        = string
    default     = "LRS"
}

variable "public_network_access_enabled" {
    description = "Enable or disable public network access"
    type        = bool
    default     = true
}

variable "https_traffic_only_enabled" {
    description = "Enable HTTPS traffic only"
    type        = bool
    default     = true
}

variable "min_tls_version" {
    description = "Minimum TLS version"
    type        = string
    default     = "TLS1_2"
}

variable "access_tier" {
    description = "Access tier for the storage account"
    type        = string
    default     = "Hot"
}

variable "account_kind" {
    description = "The kind of storage account"
    type        = string
    default     = "StorageV2"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "location" {
    description = "The Azure location where resources will be deployed"
    type        = string
}

# variable "subnet_ai_id" {
#     description = "The ID of the subnet associated with the Azure AI Services resource."
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