module "routes" {
  source = "./modules/azroutes"
  resource_group_name = var.resource_group_name
  route_table_name = module.UDR.UDR_Name
  route_name = var.route_name
}