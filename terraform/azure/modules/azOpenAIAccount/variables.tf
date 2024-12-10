# variables.tf

variable "location" {
  description = "The location of the resources."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "openai_account_name" {
  description = "The name of the OpenAI account."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the OpenAI account."
  type        = string
  default     = "S0"
}

variable "subnet_id" {
  description = "subnet id"
  type = string
}



variable "openai_deployments" {
  description = "Configuration for OpenAI deployments."
  type = list(object({
    name                   = string
    version_upgrade_option = string
    model_format           = string
    model_name             = string
    model_version          = string
    capacity               = string
    type                   = string
  }))
}

variable "tags" {}