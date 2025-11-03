variable "name" {
    description = "The name of the Static Web App."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the Static Web App."
    type        = string
}

variable "location" {
    description = "The Azure location where the Static Web App will be created."
    type        = string
}

variable "sku_tier" {
    description = "The SKU tier for the Static Web App (e.g., Free, Standard)."
    type        = string
    default     = "Standard" 
}

variable "sku_size" {
    description = "The SKU Size for the Static Web App (e.g., Free, Standard)."
    type        = string
    default     = "Standard" 
}