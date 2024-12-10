module "RG" {
  source = "./modules/azResourceGroup"
  name = var.resource_group_name
  location = var.location
  tags = var.tags
}