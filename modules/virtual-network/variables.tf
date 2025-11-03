variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = string
}

variable "location" {
  description = "Location of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for the Virtual Network"
  type        = string
}

variable "subnets" {
  description = "Subnets within the VNet"
  type = map(object({
    name               = string
    address_prefix     = string
    delegation_name    = optional(string)
    service_delegation = optional(string)
    service_endpoints  = optional(list(string))
  }))
}