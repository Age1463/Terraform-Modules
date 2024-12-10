resource "azurerm_subnet_network_security_group_association" "NSG" {
  network_security_group_id = var.NSG_id
  subnet_id                 = var.snet_id
}
