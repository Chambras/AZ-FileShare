# Azure File Share with Recovery Vault

It creates:

* A new Resource Group
* A new Storage Account
* A new file share
* A new Azure Recovery Vault.

## Project Structure

```ssh
.
├── LICENSE
├── README.md
├── main.tf
├── outputs.tf
└── variables.tf
```

## Pre-requisites

It is assumed that you have azure CLI and Terraform installed and configured.
More information on this topic [here](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-install-configure). I recommend using a Service Principal with a certificate.

### versions

* Terraform =>0.12.16
* Azure provider 1.37.0
* Azure CLI 2.0.77

## Usage

Just run these commands to initialize terraform, get a plan and approve it to apply it.

```ssh
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
```

I also recommend using a remote state instead of a local one. You can change this configuration in _`main.tf`_
You can create a free Terraform Cloud account [here](https://app.terraform.io).

## Clean resources

It will destroy everything that was created.

```ssh
terraform destroy --force
```

## Caution

Be aware that by running this script your account might get billed.

## Authors

* Marcelo Zambrana