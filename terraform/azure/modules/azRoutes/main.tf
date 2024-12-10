resource "azurerm_route" "route" {
  count = length(var.route_name)
  name = lookup(element(var.route_name, count.index),"name")
  next_hop_in_ip_address = lookup(element(var.route_name, count.index),"next_hop_in_ip_address")
  next_hop_type = lookup(element(var.route_name, count.index),"next_hop_type")
  address_prefix = lookup(element(var.route_name, count.index),"address_prefix")
  resource_group_name = var.resource_group_name
  route_table_name    = var.route_table_name
  }