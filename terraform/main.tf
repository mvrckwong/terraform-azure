terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}

provider "azurerm" {
    features {}
}

# Example Azure Resource Configuration
resource "azurerm_resource_group" "example" {
    name     = var.resource_group_name
    location = var.location
}

# Module Example
module "key_vault" {
    source = "./modules/key_vault"

    resource_group_name = azurerm_resource_group.example.name
    location            = azurerm_resource_group.example.location
    key_vault_name      = var.key_vault_name
}