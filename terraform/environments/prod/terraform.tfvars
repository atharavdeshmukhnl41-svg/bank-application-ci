project_name = "bankapp"
environment  = "prod"
location     = "westeurope"

vnet_name                 = "bank-vnet-prod"
vnet_address_space        = ["10.20.0.0/16"]
aks_subnet_name           = "aks-subnet"
aks_subnet_address_prefix = ["10.20.1.0/24"]

acr_name = "bankacrprod"
aks_name = "bank-aks-prod"
dns_prefix = "bankprod"

node_count = 2
vm_size    = "Standard_DS3_v2"
kubernetes_version = "1.29.2"


