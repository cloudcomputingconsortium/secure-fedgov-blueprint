resource "azurerm_key_vault" "core" {
  name                        = "core-kv"
  location                    = azurerm_resource_group.core.location
  resource_group_name         = azurerm_resource_group.core.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  soft_delete_enabled         = true
  purge_protection_enabled    = true
}
