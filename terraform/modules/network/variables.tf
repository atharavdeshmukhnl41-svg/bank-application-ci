variable "vnet_name" {}
variable "resource_group_name" {}
variable "location" {}
variable "vnet_address_space" { type = list(string) }
variable "aks_subnet_name" {}
variable "aks_subnet_address_prefix" { type = list(string) }
