variable "app_insights_name" {
    description = "The name of the Application Insights resource."
    type        = string
}

variable "location" {
    description = "The location where the Application Insights resource will be created."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the Application Insights resource."
    type        = string
}

variable "application_type" {
    description = "The type of application for Application Insights."
    type        = string
    default     = "web"
}

variable "log_analytics_workspace_id" {
    description = "The ID of the Log Analytics Workspace to link with Application Insights."
    type        = string
}