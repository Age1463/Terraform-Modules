module "AIServiceMultiService" {
  source = "./modules/azAIServiceMultiServiceAccount"
  aiservicemulti_account_name = var.AIServiceMultiService_name
  location                    = var.AIServiceMultiService_location
  resource_group_name         = module.RG.resourceGroupName
  subnet_id                   = module.subnets.subnetId
  tags                        = var.tags
}