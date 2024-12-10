#Private Endpoint
resource "azurerm_private_endpoint" "pep" {
  location            = var.location
  name                = var.pep_name
  resource_group_name = var.rg_name
  subnet_id           = var.subnet_id
  private_service_connection {
    is_manual_connection = false
    name                 = var.psc_name
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names = var.subresources
  }
  private_dns_zone_group {
    name = var.dnszone_name
    private_dns_zone_ids = var.dnszone_id
  }
}