resource "vault_keymgmt_replicate_key" "keymgmt_replicate_keys" {
  for_each = var.keymgmt_replicate_keys

  key_name  = each.value.key_name
  kms_name  = each.value.kms_name
  mount     = each.value.mount
  namespace = each.value.namespace
}

