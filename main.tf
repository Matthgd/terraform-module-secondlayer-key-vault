
data "azurerm_client_config" "current" {}

module "azurerm_key_vault" {
  source = "git::https://github.com/Matthgd/terraform-module-azurerm-key-vault.git"
  name                        = var.kv_name_exception != null ? var.kv_name_exception : "kv-${var.name}"
  location                    = var.location.name
  resource_group_name         = var.resource_group_name.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = var.purge_protection_enabled
  tags                        = var.tags
  sku_name = "standard"
  enable_rbac_authorization   = true
}