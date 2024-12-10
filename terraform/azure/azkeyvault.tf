module "keyvault" {
  source = "./modules/azKeyvault"
  location = var.kv_location
  name = var.kv_name
  public_access = var.kv_public_access
  resource_group_name = module.RG.resourceGroupName
  sku_name = var.kv_sku
  tags = var.tags
  tenant_id = var.tenant_id
}