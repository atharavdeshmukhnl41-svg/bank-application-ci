output "vnet_id" {
  description = "VNet ID"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "VNet name"
  value       = azurerm_virtual_network.vnet.name
}

output "aks_subnet_id" {
  description = "AKS subnet ID"
  value       = azurerm_subnet.aks_subnet.id
}
