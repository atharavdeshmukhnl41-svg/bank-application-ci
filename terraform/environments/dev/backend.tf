terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  resource_group_name  = "tfstate-rg"
  storage_account_name = "tfstatestorage"
  container_name       = "terraform-state"
  key                  = "bankapp-dev.terraform.tfstate"
}
