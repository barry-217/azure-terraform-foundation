output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.main.id
}

output "workload_subnet_id" {
  value = azurerm_subnet.workload.id
}

output "workload_network_security_group_id" {
  value = azurerm_network_security_group.workload.id
}

output "storage_account_name" {
  value = azurerm_storage_account.main.name
}

output "key_vault_name" {
  value = azurerm_key_vault.main.name
}

output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.main.name
}