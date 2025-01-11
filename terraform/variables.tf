output "resource_group_id" {
    description = "ID of the created resource group"
    value       = azurerm_resource_group.example.id
}

output "key_vault_uri" {
    description = "URI of the created Key Vault"
    value       = module.key_vault.vault_uri
    sensitive   = true
}

output "deployment_environment" {
    description = "Current deployment environment"
    value       = var.environment
}
