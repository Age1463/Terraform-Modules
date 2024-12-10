module "pep" {
  source = "./modules/azPrivateEndpoint"
  dnszone_id = module.dnszone.id
  dnszone_name = module.dnszone.name
  location = var.location
  pep_name = var.pep_name
  private_connection_resource_id = var.pc_id
  psc_name = var.psc_name
  rg_name = module.RG.resourceGroupName
  subnet_id = module.subnets.subnetId
  subresources = var.subresource_name
}