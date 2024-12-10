resource "azurerm_network_security_group" "NSG" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
}
