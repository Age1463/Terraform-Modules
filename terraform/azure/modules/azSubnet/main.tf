resource "azurerm_subnet" "subnets" {
  name                 = lookup(element(var.subnets, count.index), "name")
  count                = length(var.subnets)
  address_prefixes     = lookup(element(var.subnets, count.index), "address_prefixes")
  resource_group_name  = var.resourceGroupName
  virtual_network_name = var.virtualNetworkName
  service_endpoints = lookup(element(var.subnets, count.index), "service_endpoints")
  delegation {
    name = lookup(element(var.subnets, count.index), "delegation_name")
    service_delegation {
      name = lookup(element(var.subnets, count.index), "service_delegation")
      actions = lookup(element(var.subnets, count.index), "actions")
    }
  }
}
