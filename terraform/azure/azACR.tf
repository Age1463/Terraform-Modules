module "ACR" {
  source = "./modules/azContainerRegistry"
  admin_enabled = var.admin_enabled
  container_registry_name = var.acr_name
  container_registry_sku = var.acr_sku
  location = var.acr_location
  resource_group_name = module.RG.resourceGroupName
  tags = var.tags
}