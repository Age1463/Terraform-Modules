module "UDR" {
  source = "./modules/azroutetable"
  route_table_name = var.route_table_name
  resource_group_name = var.resource_group_name
  location = var.route_table_location
}