variable "name" {
    description = "The name prefix for the Private Endpoint and related resources."
    type        = string
}

variable "location" {
    description = "The Azure region where the Private Endpoint will be created."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the Private Endpoint."
    type        = string
}

variable "subnet_id" {
    description = "The ID of the subnet to associate with the Private Endpoint."
    type        = string
}

variable "private_connection_resource_id" {
    description = "The resource ID of the private link service to connect to."
    type        = string
}

variable "subresource_name" {
    description = "A list of subresource names to connect to on the target resource."
    type        = string
}

variable "private_dns_zone_id" {
    description = "The ID of the Private DNS Zone to associate with the Private Endpoint."
    type        = string
}