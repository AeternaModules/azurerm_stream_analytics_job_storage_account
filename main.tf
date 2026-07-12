data "azurerm_key_vault_secret" "storage_account_key" {
  for_each     = { for k, v in var.stream_analytics_job_storage_accounts : k => v if v.storage_account_key_key_vault_id != null && v.storage_account_key_key_vault_secret_name != null }
  name         = each.value.storage_account_key_key_vault_secret_name
  key_vault_id = each.value.storage_account_key_key_vault_id
}
resource "azurerm_stream_analytics_job_storage_account" "stream_analytics_job_storage_accounts" {
  for_each = var.stream_analytics_job_storage_accounts

  authentication_mode     = each.value.authentication_mode
  storage_account_name    = each.value.storage_account_name
  stream_analytics_job_id = each.value.stream_analytics_job_id
  storage_account_key     = each.value.storage_account_key != null ? each.value.storage_account_key : try(data.azurerm_key_vault_secret.storage_account_key[each.key].value, null)
}

