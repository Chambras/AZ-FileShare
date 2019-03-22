# Azure File Share with Recovery Vault

It creates:
* A new Resource Group
* A new Storage Account
* A new file share
* A new Azure Recovery Vault.

## Pre-requists

It is assumed that you have azure CLI installed and configured.
More information on this topic [here](https://docs.microsoft.com/en-us/azure/terraform/terraform-overview).

### versions
* Terraform =>0.11.13
* Azure provider 1.23.0

## Usage
Just run these commands to initialize terraform, get a plan and approve it to apply it.

```
terraform init
terraform plan
terraform apply
```

## Clean resources
It will destroy everything that was created.
```
terraform destroy --force
```

## Caution
Be aware that by running this script your account might get billed.
Also it is recommended to use a remote state instead of a local one.