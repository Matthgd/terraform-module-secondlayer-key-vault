output "kv_id" {
  sensitive = true
  value =   azurerm_key_vault.main.id
}