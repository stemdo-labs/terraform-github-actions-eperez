terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "rg1eperez-lab01"
    storage_account_name = "sta1eperez"
    # #container_name       = "tfstateeperez"
    key                  = "terraform.tfstate"
    # #use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  #use_oidc = true
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstateeperez"
  storage_account_name  = "sta1eperez"
  container_access_type = "private"
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.existent_resource_group_name
  address_space       = var.vnet_address_space

  tags = merge(
    {
      owner = var.owner_tag
      environment = var.environement_tag
    },
    var.vnet_tags
  )
}

resource "azurerm_subnet" "subnet" {
  name = var.namessubnet
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}

resource "azurerm_subnet" "subnet2" {
  name = var.namessubnet2
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes2
}
