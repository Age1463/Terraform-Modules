module "NSG" {
  source = "./modules/AzNSG"
  name = var.nsg_name
  location = var.nsg_location
  resource_group_name = var.resource_group_name
}