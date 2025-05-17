resource "azurerm_recovery_services_vault" "core" {
  name                = "core-backupvault"
  location            = azurerm_resource_group.core.location
  resource_group_name = azurerm_resource_group.core.name
  sku                 = "Standard"
}
