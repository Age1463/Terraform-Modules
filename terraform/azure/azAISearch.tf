module "AISearch" {
  source = "./modules/azAISearchService"
  AI_search_name      = var.AISearch_name
  location            = var.AISearch_location
  replica_count       = var.replica_count
  resource_group_name = module.RG.resourceGroupName
  sku                 = var.AISearch_sku
  subnet_id           = module.subnets.subnetId
  tags                = var.tags
}
