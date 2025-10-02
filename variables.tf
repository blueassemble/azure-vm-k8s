variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
  default     = "rg-k8s-test-001"
}

variable "location" {
  description = "The Azure region in which to create the resources."
  type        = string
  default     = "eastus"
}

variable "virtual_network_name" {
  description = "The name of the virtual network to create."
  type        = string
  default     = "vnet-demo-eastus2-001"
}

variable "virtual_network_address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "A map of subnet names to address prefixes."
  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
  default = {
    "subnet1" = {
      name             = "subnet1"
      address_prefixes = ["10.0.0.0/24"]
    }
    "subnet2" = {
      name             = "subnet2"
      address_prefixes = ["10.0.1.0/24"]
    }
  }
}