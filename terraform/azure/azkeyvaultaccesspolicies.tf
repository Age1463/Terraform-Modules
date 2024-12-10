module "kvaccesspolicies" {
  source = "./modules/azKeyvaultAccessPolicy"
  keyvault_id        = module.keyvault.id
  object_id          = var.object_id
  secret_permissions = var.secret_permission
  tenant_id          = var.tenant_id
}