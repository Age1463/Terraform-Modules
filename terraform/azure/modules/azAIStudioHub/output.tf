output "ai_studio_hub_id" {
  value = azapi_resource.AI_studio_hub.id
}

output "project_id" {
  value = azapi_resource.Project.id
}

output "identity" {
  value = azapi_resource.Project.identity[0].principal_id
}