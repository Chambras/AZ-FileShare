
provider "azurerm" {
  version = "=1.23.0"
}

resource "azurerm_resource_group" "genericRG" {
  name = "${var.rgName}"
  location = "${var.location}"
  tags = "${var.tags}"
}

resource "azurerm_storage_account" "genericSA" {
  name                     = "${var.saName}"
  resource_group_name      = "${azurerm_resource_group.genericRG.name}"
  location                 = "${azurerm_resource_group.genericRG.location}"
  account_kind             = "${var.saKind}"
  account_tier             = "${var.saTier}"
  account_replication_type = "${var.saReplicationType}"

  tags = "${var.tags}"
}

resource "azurerm_storage_share" "genericFileShare" {
  name = "${var.fsName}"
  resource_group_name  = "${azurerm_resource_group.genericRG.name}"
  storage_account_name = "${azurerm_storage_account.genericSA.name}"

  quota = "${var.fsQuota}"
}

resource "azurerm_recovery_services_vault" "genericVault" {
  name                = "${var.rsvName}"
  location            = "${azurerm_resource_group.genericRG.location}"
  resource_group_name = "${azurerm_resource_group.genericRG.name}"
  sku                 = "${var.rsvSKU}"

  tags = "${var.tags}"
}
