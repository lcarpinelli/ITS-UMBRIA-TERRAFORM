variable "app_name" {
    description = "The name of the Azure App Service."
    type        = string
}

variable "location" {
    description = "The Azure region where the resources will be deployed."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the App Service."
    type        = string
}

variable "service_plan_id" {
    description = "The ID of the App Service Plan to use for the App Service."
    type        = string
}

variable "current_stack" {
    description = "The application stack to use."
    type        = string
    default     = "dotnet"
}

variable "dotnet_versione" {
    description = "The .NET version to use for the application stack."
    type        = string
    default     = "v8.0"
}

variable "application_insight_key" {
    description = "The Instrumentation Key for Application Insights."
    type        = string
    sensitive = true
}

variable "application_insight_connection_string" {
    description = "The Connection String for Application Insights."
    type        = string
    sensitive = true
}

variable "storage_connection_string" {
    description = "The connection string for Azure Storage used by the App Service."
    type        = string
}

variable "azure_static_wa_endpoint" {
    description = "The endpoint for static web app."
    type        = string
}

variable "azure_ai_services_endpoint" {
    description = "The endpoint URL for Azure AI Services."
    type        = string
}

variable "azure_ai_services_key" {
    description = "The API key for Azure AI Services."
    type        = string
    sensitive = true
}

variable "subnet_ai_id" {
    description = "The ID of the subnet associated with the Azure AI Services resource."
    type        = string
}

variable "subnet_st_id" {
    description = "The ID of the subnet associated with the Storage resource."
    type        = string
}

variable "subnet_stwa_id" {
    description = "The ID of the subnet associated with the Static Web App resource."
    type        = string
}