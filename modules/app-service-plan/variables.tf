variable "plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "location" {
  description = "The Azure location where the App Service Plan will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service Plan."
  type        = string
}

variable "plan_os_type" {
  description = "The OS type for the App Service Plan (e.g., Windows, Linux)."
  type        = string
  default    = "Windows"
}

variable "plan_sku" {
  description = "The SKU for the App Service Plan (e.g., S1, P1v2)."
  type        = string
  default = "P0v3"
}