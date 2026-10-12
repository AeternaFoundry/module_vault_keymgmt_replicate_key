output "keymgmt_replicate_keys_key_name" {
  description = "Map of key_name values across all keymgmt_replicate_keys, keyed the same as var.keymgmt_replicate_keys except keys with no key_name are omitted"
  value       = { for k, v in vault_keymgmt_replicate_key.keymgmt_replicate_keys : k => v.key_name if v.key_name != null && length(v.key_name) > 0 }
}
output "keymgmt_replicate_keys_kms_name" {
  description = "Map of kms_name values across all keymgmt_replicate_keys, keyed the same as var.keymgmt_replicate_keys except keys with no kms_name are omitted"
  value       = { for k, v in vault_keymgmt_replicate_key.keymgmt_replicate_keys : k => v.kms_name if v.kms_name != null && length(v.kms_name) > 0 }
}
output "keymgmt_replicate_keys_mount" {
  description = "Map of mount values across all keymgmt_replicate_keys, keyed the same as var.keymgmt_replicate_keys except keys with no mount are omitted"
  value       = { for k, v in vault_keymgmt_replicate_key.keymgmt_replicate_keys : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "keymgmt_replicate_keys_namespace" {
  description = "Map of namespace values across all keymgmt_replicate_keys, keyed the same as var.keymgmt_replicate_keys except keys with no namespace are omitted"
  value       = { for k, v in vault_keymgmt_replicate_key.keymgmt_replicate_keys : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

