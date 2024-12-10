resource "azurerm_subnet_route_table_association" "UDR" {
  route_table_id = var.UDR_id
  subnet_id      = var.snet_id
}


