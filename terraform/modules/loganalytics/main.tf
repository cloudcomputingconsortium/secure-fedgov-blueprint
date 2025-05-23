resource "azurerm_log_analytics_workspace" "core" {
  name                = "core-laworkspace"
  location            = azurerm_resource_group.core.location
  resource_group_name = azurerm_resource_group.core.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
