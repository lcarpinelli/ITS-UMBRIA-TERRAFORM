variable "name" {
    description = "The name of the DNS A record."
    type        = string
}

variable "dns_zone_name" {
    description = "The name of the Private DNS zone."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group containing the DNS zone."
    type        = string
}

variable "ttl" {
    description = "The Time To Live (TTL) of the DNS record."
    type        = number
    default     = 300
}

variable "private_endpoint_ip" {
    description = "A list of IP addresses for the A record."
    type        = string
}