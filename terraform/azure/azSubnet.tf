module "subnets" {
  source = "./modules/azSubnet"
  subnets            = var.subnets
  resourceGroupName  = var.resource_group_name
  virtualNetworkName = var.virtual_network_name
  depends_on         = [module.virtualNetwork]
}