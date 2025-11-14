//------------------------------------------------------------------------------------------------------
// General
//------------------------------------------------------------------------------------------------------

variable "location" {
    description = "Name of the resource group"
    type        = string
}

//------------------------------------------------------------------------------------------------------
// Naming Convention Variables
//------------------------------------------------------------------------------------------------------

variable "prefix" {
    description = "Prefix for resource names"
    type        = string
}

variable "environment" {
    description = "Suffix for resource names"
    type        = string
}

variable "region" {
    description = "Azure region"
    type        = string
}

variable "instance" {
    description = "Instance identifier"
    type        = string
}

variable "environmentcomplete" {
    description = "environment complete"
    type        = string
}