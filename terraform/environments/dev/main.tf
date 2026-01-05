module "resource_group" {
  source        = "../../modules/resource-group"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
}

module "network" {
  source        = "../../modules/network"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
  rg_name      = module.resource_group.rg_name
}

module "acr" {
  source        = "../../modules/acr"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
  rg_name      = module.resource_group.rg_name
}

module "aks" {
  source        = "../../modules/aks"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
  rg_name      = module.resource_group.rg_name
  subnet_id    = module.network.subnet_id
  acr_id       = module.acr.acr_id
}
