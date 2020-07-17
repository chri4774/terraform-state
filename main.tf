# Configure the Microsoft Azure Provider
provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x.
    # If you're using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}
}

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "this" {
    name     = var.ressourcegroup
    location = var.location

    tags = {
        AzCosts = var.costunit
    }
}

resource "azurerm_storage_account" "this" {
  name                     = var.storageaccountname
  resource_group_name      = azurerm_resource_group.this.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
      AzCosts = var.costunit
  }
}

resource "azurerm_storage_container" "this" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}
