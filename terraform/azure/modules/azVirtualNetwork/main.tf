resource "azurerm_virtual_network" "virtualNetwork" {
  address_space       = var.vnetAddressSpace
  location            = var.location
  name                = var.virtualNetworkName
  resource_group_name = var.resourceGroupName
  tags                = var.tags
}