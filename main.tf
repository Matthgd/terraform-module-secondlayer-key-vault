
module "azurerm_key_vault" {
  source = "git::https://github.com/Matthgd/terraform-module-azurerm-key-vault.git"
  name                        = var.kv_name_exception != null ? var.kv_name_exception : "kv-${var.name}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7
  purge_protection_enabled    = var.purge_protection_enabled
  tags                        = var.tags
  sku_name = "standard"

}