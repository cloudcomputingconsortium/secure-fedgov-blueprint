resource "azurerm_network_security_group" "core" {
  name                = "core-nsg"
  location            = azurerm_resource_group.core.location
  resource_group_name = azurerm_resource_group.core.name

  security_rule {
    name                       = "deny-internet-inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
