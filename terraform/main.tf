provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "core" {
  name     = "coreInfraRG"
  location = "eastus2"
}

module "keyvault" {
  source = "./modules/keyvault"
}

module "loganalytics" {
  source = "./modules/loganalytics"
}

module "nsg" {
  source = "./modules/nsg"
}

module "recoveryvault" {
  source = "./modules/recoveryvault"
}
