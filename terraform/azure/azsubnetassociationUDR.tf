module "subnetassociationUDR" {
  source = "./modules/AzSubnetAssociation_UDR"
  UDR_id = module.UDR.UDR_ID
  snet_id = module.subnets.subnetId[0]
}