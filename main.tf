terraform {
  # It is recommended to use remote state instead of local
  # You can update these values in order to configure your remote state.
  /*  backend "remote" {
    organization = "{{ORGANIZATION_NAME}}"

    workspaces {
      name = "{{WORKSPACE_NAME}}"
    }
  }
*/
  required_version = ">= 0.12.16"
}

provider "azurerm" {
  version = "=1.37.0"
}

resource "azurerm_resource_group" "genericRG" {
  name     = var.rgName
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "genericSA" {
  name                     = var.saName
  resource_group_name      = azurerm_resource_group.genericRG.name
  location                 = azurerm_resource_group.genericRG.location
  account_kind             = var.saKind
  account_tier             = var.saTier
  account_replication_type = var.saReplicationType

  tags = var.tags
}

resource "azurerm_storage_share" "genericFileShare" {
  name                 = var.fsName
  storage_account_name = azurerm_storage_account.genericSA.name

  quota = var.fsQuota
}

resource "azurerm_recovery_services_vault" "genericVault" {
  name                = var.rsvName
  location            = azurerm_resource_group.genericRG.location
  resource_group_name = azurerm_resource_group.genericRG.name
  sku                 = var.rsvSKU

  tags = var.tags
}
