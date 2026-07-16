output "stream_analytics_job_storage_accounts_id" {
  description = "Map of id values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_job_storage_accounts_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.authentication_mode if v.authentication_mode != null && length(v.authentication_mode) > 0 }
}
output "stream_analytics_job_storage_accounts_storage_account_key" {
  description = "Map of storage_account_key values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.storage_account_key if v.storage_account_key != null && length(v.storage_account_key) > 0 }
  sensitive   = true
}
output "stream_analytics_job_storage_accounts_storage_account_name" {
  description = "Map of storage_account_name values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.storage_account_name if v.storage_account_name != null && length(v.storage_account_name) > 0 }
}
output "stream_analytics_job_storage_accounts_stream_analytics_job_id" {
  description = "Map of stream_analytics_job_id values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.stream_analytics_job_id if v.stream_analytics_job_id != null && length(v.stream_analytics_job_id) > 0 }
}

