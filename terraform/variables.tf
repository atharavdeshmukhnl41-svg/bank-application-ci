############################################
# Resource Group
############################################
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

############################################
# Azure Kubernetes Service (AKS)
############################################
variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of AKS worker nodes"
  type        = number
}

############################################
# Azure Container Registry (ACR)
############################################
variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

