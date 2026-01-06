module "bank_application_infra" {
  source = "../../terraform"

  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_name  = var.storage_account_name
  acr_name  = var.acr_name
  aks_name  = var.aks_name
  node_count = var.node_count
}

