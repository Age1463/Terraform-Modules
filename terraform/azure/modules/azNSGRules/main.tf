resource "azurerm_network_security_rule" "rule" {
  count = length(var.Rules)
  access                      = lookup(element(var.Rules, count.index),"access")
  direction                   = lookup(element(var.Rules, count.index),"direction")
  description                   = lookup(element(var.Rules, count.index),"description")
  name                        = lookup(element(var.Rules, count.index),"name")
  network_security_group_name = var.nsg_name
  priority                    = lookup(element(var.Rules, count.index),"priority")
  protocol                    = lookup(element(var.Rules, count.index),"protocol")
  resource_group_name         = var.resource_group_name
  source_port_range = lookup(element(var.Rules, count.index),"source_port_range")
  source_port_ranges = lookup(element(var.Rules, count.index),"source_port_ranges")
  source_address_prefix = lookup(element(var.Rules, count.index),"source_address_prefix")
  source_address_prefixes = lookup(element(var.Rules, count.index),"source_address_prefixes")
  destination_application_security_group_ids = lookup(element(var.Rules, count.index),"destination_application_security_group_ids")
  source_application_security_group_ids = lookup(element(var.Rules, count.index),"source_application_security_group_ids")
  destination_port_range = lookup(element(var.Rules, count.index),"destination_range")
  destination_port_ranges = lookup(element(var.Rules, count.index),"destination_port_ranges")
  destination_address_prefix = lookup(element(var.Rules, count.index),"destination_address_prefix")
  destination_address_prefixes = lookup(element(var.Rules, count.index),"destination_address_prefixes")
}