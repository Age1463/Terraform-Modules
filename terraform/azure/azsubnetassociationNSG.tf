module "subnetassociationnsg" {
  source = "./modules/AzSubnetAssociation_NSG"
  NSG_id = module.NSG.nsg_id
  snet_id = module.subnets.subnetId[0]
}