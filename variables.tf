variable "stream_analytics_job_storage_accounts" {
  description = <<EOT
Map of stream_analytics_job_storage_accounts, attributes below
Required:
    - authentication_mode
    - storage_account_name
    - stream_analytics_job_id
Optional:
    - storage_account_key
    - storage_account_key_key_vault_id (alternative to storage_account_key - read from Key Vault instead)
    - storage_account_key_key_vault_secret_name (alternative to storage_account_key - read from Key Vault instead)
EOT

  type = map(object({
    authentication_mode                       = string
    storage_account_name                      = string
    stream_analytics_job_id                   = string
    storage_account_key                       = optional(string)
    storage_account_key_key_vault_id          = optional(string)
    storage_account_key_key_vault_secret_name = optional(string)
  }))
}

