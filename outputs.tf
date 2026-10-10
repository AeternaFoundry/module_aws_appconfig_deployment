output "appconfig_deployments_id" {
  description = "Map of id values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appconfig_deployments_application_id" {
  description = "Map of application_id values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "appconfig_deployments_arn" {
  description = "Map of arn values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appconfig_deployments_configuration_profile_id" {
  description = "Map of configuration_profile_id values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.configuration_profile_id if v.configuration_profile_id != null && length(v.configuration_profile_id) > 0 }
}
output "appconfig_deployments_configuration_version" {
  description = "Map of configuration_version values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.configuration_version if v.configuration_version != null && length(v.configuration_version) > 0 }
}
output "appconfig_deployments_deployment_number" {
  description = "Map of deployment_number values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.deployment_number if v.deployment_number != null }
}
output "appconfig_deployments_deployment_strategy_id" {
  description = "Map of deployment_strategy_id values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.deployment_strategy_id if v.deployment_strategy_id != null && length(v.deployment_strategy_id) > 0 }
}
output "appconfig_deployments_description" {
  description = "Map of description values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appconfig_deployments_environment_id" {
  description = "Map of environment_id values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.environment_id if v.environment_id != null && length(v.environment_id) > 0 }
}
output "appconfig_deployments_kms_key_arn" {
  description = "Map of kms_key_arn values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "appconfig_deployments_kms_key_identifier" {
  description = "Map of kms_key_identifier values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.kms_key_identifier if v.kms_key_identifier != null && length(v.kms_key_identifier) > 0 }
}
output "appconfig_deployments_region" {
  description = "Map of region values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appconfig_deployments_state" {
  description = "Map of state values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "appconfig_deployments_tags" {
  description = "Map of tags values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appconfig_deployments_tags_all" {
  description = "Map of tags_all values across all appconfig_deployments, keyed the same as var.appconfig_deployments"
  value       = { for k, v in aws_appconfig_deployment.appconfig_deployments : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

