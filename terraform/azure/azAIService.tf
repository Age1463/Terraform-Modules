module "AIService" {
  source = "./modules/azAIService"
  aiservice_account_name = var.aiservice_name
  location               = var.aiservice_location
  publicNetworkAccess    = var.public_access
  resource_group_name    = module.RG.resourceGroupName
  sku_name               = var.aiservice_sku
  tags                   = var.tags
}