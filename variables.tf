variable "appconfig_deployments" {
  description = <<EOT
Map of appconfig_deployments, attributes below
Required:
    - application_id
    - configuration_profile_id
    - configuration_version
    - deployment_strategy_id
    - environment_id
Optional:
    - description
    - kms_key_identifier
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    application_id           = string
    configuration_profile_id = string
    configuration_version    = string
    deployment_strategy_id   = string
    environment_id           = string
    description              = optional(string)
    kms_key_identifier       = optional(string)
    region                   = optional(string)
    tags                     = optional(map(string))
    tags_all                 = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployments : (
        can(regex("[0-9a-z]{4,7}", v.configuration_profile_id))
      )
    ])
    error_message = ""
  }
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployments : (
        length(v.configuration_version) >= 1 && length(v.configuration_version) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployments : (
        can(regex("(^[0-9a-z]{4,7}$|^AppConfig\\.[0-9A-Za-z]{9,40}$)", v.deployment_strategy_id))
      )
    ])
    error_message = ""
  }
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployments : (
        can(regex("[0-9a-z]{4,7}", v.environment_id))
      )
    ])
    error_message = ""
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

