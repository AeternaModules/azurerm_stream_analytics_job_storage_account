output "stream_analytics_job_storage_accounts" {
  description = "All stream_analytics_job_storage_account resources"
  value       = azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts
  sensitive   = true
}
output "stream_analytics_job_storage_accounts_authentication_mode" {
  description = "List of authentication_mode values across all stream_analytics_job_storage_accounts"
  value       = [for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : v.authentication_mode]
}
output "stream_analytics_job_storage_accounts_storage_account_key" {
  description = "List of storage_account_key values across all stream_analytics_job_storage_accounts"
  value       = [for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : v.storage_account_key]
  sensitive   = true
}
output "stream_analytics_job_storage_accounts_storage_account_name" {
  description = "List of storage_account_name values across all stream_analytics_job_storage_accounts"
  value       = [for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : v.storage_account_name]
}
output "stream_analytics_job_storage_accounts_stream_analytics_job_id" {
  description = "List of stream_analytics_job_id values across all stream_analytics_job_storage_accounts"
  value       = [for k, v in azurerm_stream_analytics_job_storage_account.stream_analytics_job_storage_accounts : v.stream_analytics_job_id]
}

