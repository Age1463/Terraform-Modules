resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link" {
  name                  = var.vnetlink_name
#   count = length(var.dns_name)
  private_dns_zone_name = var.dns_name   # azurerm_private_dns_zone.dns_zone[count.index].name
  resource_group_name   = var.rg_name
  virtual_network_id    = var.vnet_id
}