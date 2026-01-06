variable "aks_name" {
  type        = string
  description = "AKS cluster name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for AKS"
}

variable "node_count" {
  type        = number
  description = "Number of AKS nodes"
}

variable "vm_size" {
  type        = string
  description = "VM size for AKS nodes"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for AKS"
}
