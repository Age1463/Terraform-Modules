module "dnszone" {
  source = "./modules/azPrivateDNSZone"
  dns_name = var.dns_name
  rg_name = module.RG.resourceGroupName
}