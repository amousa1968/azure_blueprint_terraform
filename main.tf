terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "blueprint" {
  source = "./modules/blueprint"

  resource_group_name    = "my-resource-group"
  location               = "East US"
  storage_account_name   = "mystorageaccount123"
  vnet_name              = "my-vnet"
  vnet_address_space     = ["10.0.0.0/16"]
  subnet_name            = "my-subnet"
  subnet_address_prefixes = ["10.0.1.0/24"]
}
