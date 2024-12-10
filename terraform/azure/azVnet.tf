module "virtualNetwork" {
  source = "./modules/azVirtualNetwork"
  location           = var.vnet_location
  tags               = var.tags
  virtualNetworkName = var.virtual_network_name
  vnetAddressSpace   = var.vnet_address_space
  resourceGroupName  = var.resource_group_name
}