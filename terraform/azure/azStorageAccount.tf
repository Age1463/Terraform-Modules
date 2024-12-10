module "sa" {
  source = "./modules/azStorageAccount"
  account_replication_type = var.sa_replication_tier
  account_tier = var.sa_account_tier
  location = var.sa_location
  name = var.sa_name
  public_access = var.sa_public_access
  resource_group_name = module.RG.resourceGroupName
  tags = var.tags
}