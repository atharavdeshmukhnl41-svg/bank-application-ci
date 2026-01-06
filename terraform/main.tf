############################################
# Resource Group
############################################
module "resource_group" {
  source       = "../../modules/resource-group"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
}

############################################
# Network (VNet + Subnet for AKS)
############################################
module "network" {
  source                     = "../../modules/network"
  vnet_name                  = var.vnet_name
  resource_group_name         = var.resource_group.name
  location                   = var.location
  vnet_address_space          = var.vnet_address_space
  aks_subnet_name             = var.aks_subnet_name
  aks_subnet_address_prefix   = var.aks_subnet_address_prefix
}
############################################
# Azure Container Registry (ACR)
############################################
module "acr" {
  source = "../../modules/acr"

  acr_name            = var.acr_name
  resource_group_name = var.resource_group.name
  location            = var.location
}

############################################
# Azure Kubernetes Service (AKS)
############################################
module "aks" {
  source = "../../modules/aks"

  aks_name              = var.aks_name
  location              = var.location
  resource_group_name   = module.resource_group.rg_name
  dns_prefix            = var.dns_prefix
  node_count            = var.node_count
  vm_size               = var.vm_size
  kubernetes_version    = var.kubernetes_version
  subnet_id             = module.network.aks_subnet_id
}

