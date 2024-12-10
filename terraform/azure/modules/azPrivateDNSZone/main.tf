resource "azurerm_private_dns_zone" "dns_zone" {
#   count = length(var.dns_name)
  name                = var.dns_name # lookup(element(var.dns_name, count.index), "name")
  resource_group_name = var.rg_name
}