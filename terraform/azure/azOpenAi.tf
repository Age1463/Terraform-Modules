module "openai" {
  source = "./modules/azOpenAIAccount"
  openai_account_name = var.openai_name
  openai_deployments = var.openai_deployment
  resource_group_name = module.RG.resourceGroupName
  subnet_id = module.subnets.subnetId
  tags = var.tags
  sku_name = var.openai_sku
  location = var.openai_location
}