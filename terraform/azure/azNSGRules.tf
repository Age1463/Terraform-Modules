module "NSGRule" {
  source = "./modules/azNSGRules"
  resource_group_name = var.resource_group_name
  nsg_name = module.NSG.nsg_name
  Rules = var.nsg_rules
}