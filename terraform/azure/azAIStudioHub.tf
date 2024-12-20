module "AIStudioHub" {
  source = "./modules/azAIStudioHub"
  AI_Studio_name             = var.hub_name
  acr_id                     = module.ACR.container_registry_id
  ai_search_id               = module.AISearch.AIservice_id
  ai_service_multiservice_id = module.AIServiceMultiService.cognitive_account_id
  app_insight_id             = module.AppInsights.application_insight_id
  hub_location               = var.hub_location
  keyvault_id                = module.keyvault.id
  openai_id                  = module.openai.cognitive_account_id
  outboundaccessType         = var.outboundaccessType
  project_location           = var.project_location
  project_name               = var.project_name
  publicNetworkAccess        = var.hub_public_access
  resource_group_id          = module.RG.rg_id
  resource_group_name        = module.RG.resourceGroupName
  storage_id                 = module.sa.storage_account
  subnet_id                  = module.subnets.subnetId
  tags                       = var.tags
}