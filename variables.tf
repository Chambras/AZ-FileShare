variable "location" {
  type        = string
  default     = "eastus"
  description = "Location where the resoruces are going to be created."
}

variable "rgName" {
  type        = string
  default     = "genericDevRG"
  description = "Resource Group Name."
}

variable "saName" {
  type        = string
  default     = "devgnrcstrgccnt"
  description = "Storage Account name. Must be unique or will fail."
}

variable "saKind" {
  type        = string
  default     = "StorageV2"
  description = "Defines the Kind of account. Valid options are Storage, StorageV2 and BlobStorage."
}

variable "saTier" {
  type        = string
  default     = "Standard"
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium."
}

variable "saReplicationType" {
  type        = string
  default     = "GRS"
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS."
}

variable "fsName" {
  type        = string
  default     = "sharefolder"
  description = "The name of the share. Must be unique within the storage account where the share is located."

}

variable "fsQuota" {
  type        = string
  default     = 50
  description = "The maximum size of the share, in gigabytes. Must be greater than 0, and less than or equal to 5 TB (5120 GB)."
}

variable "rsvName" {
  type        = string
  default     = "devrecoveryvault"
  description = "Specifies the name of the Recovery Services Vault."
}

variable "rsvSKU" {
  type        = string
  default     = "Standard"
  description = "Sets the vault's SKU. Possible values include: Standard, RS0."
}

variable "tags" {
  type = map
  default = {
    "Environment" = "Dev"
    "Project"     = "Demo"
    "BillingCode" = "Internal"
    "Customer"    = "USRI"
  }
}

variable "prefix" {
  default = "dev"
}

