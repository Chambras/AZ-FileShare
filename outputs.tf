output "rgName" {
  value = "${azurerm_resource_group.genericRG.name}"
}

output "saID" {
  value = "${azurerm_storage_account.genericSA.id}"
}

output "fsName" {
  value = "${azurerm_storage_share.genericFileShare.name}"
}

output "rsvName" {
  value = "${azurerm_recovery_services_vault.genericVault.id}"
}

