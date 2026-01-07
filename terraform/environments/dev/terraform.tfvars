
location            = "centralindia"
aks_name             = "bank-dev-aks"
node_count           = 1
acr_name             = "bankdevacr"
vnet_address_space        = ["10.0.0.0/16"]
aks_subnet_name           = "aks-subnet"
aks_subnet_address_prefix = ["10.0.1.0/24"]
dns_prefix          = "bankdev"
vm_size             = "Standard_DS2_v2"
kubernetes_version  = "1.29.2"
project_name = "bankapp"
environment = "dev"