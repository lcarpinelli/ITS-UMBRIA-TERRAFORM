variable "log_analytics_name" {
    description = "The name of the Log Analytics Workspace."
    type        = string
}

variable "location" {
    description = "The Azure region where the Log Analytics Workspace will be created."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the Log Analytics Workspace."
    type        = string
}

variable "sku" {
    description = "The SKU of the Log Analytics Workspace."
    type        = string
    default     = "PerGB2018"
}

variable "retention_in_days" {
    description = "The workspace data retention in days."
    type        = number
    default     = 30
}