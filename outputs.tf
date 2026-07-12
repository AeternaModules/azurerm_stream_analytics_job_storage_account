output "stream_analytics_job_storage_accounts_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.authentication_mode }
}
output "stream_analytics_job_storage_accounts_storage_account_key" {
  description = "Map of storage_account_key values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.storage_account_key }
  sensitive   = true
}
output "stream_analytics_job_storage_accounts_storage_account_name" {
  description = "Map of storage_account_name values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.storage_account_name }
}
output "stream_analytics_job_storage_accounts_stream_analytics_job_id" {
  description = "Map of stream_analytics_job_id values across all stream_analytics_job_storage_accounts, keyed the same as var.stream_analytics_job_storage_accounts"
  value       = { for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : k => v.stream_analytics_job_id }
}

