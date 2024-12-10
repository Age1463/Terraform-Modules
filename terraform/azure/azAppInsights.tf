module "AppInsights" {
  source = "./modules/azAppInsight"
  app_insight_name = var.AppInsights_name
  app_type = var.AppInsights_type
  location = var.AppInsights_location
  resource_group_name = module.RG.resourceGroupName
}