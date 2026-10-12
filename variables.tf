variable "keymgmt_replicate_keys" {
  description = <<EOT
Map of keymgmt_replicate_keys, attributes below
Required:
    - key_name
    - kms_name
    - mount
Optional:
    - namespace
EOT

  type = map(object({
    key_name  = string
    kms_name  = string
    mount     = string
    namespace = optional(string)
  }))
}

