variable "resource_group_name" {
    description = "Name of the resource group"
    type        = string
    default     = "my-terraform-rg"
}

variable "location" {
    description = "Azure region for resources"
    type        = string
    default     = "eastus"
}

variable "key_vault_name" {
    description = "Name of the Azure Key Vault"
    type        = string
}

variable "environment" {
    description = "Deployment environment"
    type        = string
    validation {
        condition     = contains(["dev", "staging", "prod"], var.environment)
        error_message = "Environment must be dev, staging, or prod."
    }
}
