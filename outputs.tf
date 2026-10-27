output "build_definition_lookup_id" {
  description = "Map of id values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.id }
}
output "build_definition_lookup_agent_pool_name" {
  description = "Map of agent_pool_name values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.agent_pool_name }
}
output "build_definition_lookup_agent_specification" {
  description = "Map of agent_specification values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.agent_specification }
}
output "build_definition_lookup_ci_trigger" {
  description = "Map of ci_trigger values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.ci_trigger }
}
output "build_definition_lookup_job_authorization_scope" {
  description = "Map of job_authorization_scope values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.job_authorization_scope }
}
output "build_definition_lookup_jobs" {
  description = "Map of jobs values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.jobs }
}
output "build_definition_lookup_name" {
  description = "Map of name values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.name }
}
output "build_definition_lookup_path" {
  description = "Map of path values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.path }
}
output "build_definition_lookup_project_id" {
  description = "Map of project_id values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.project_id }
}
output "build_definition_lookup_pull_request_trigger" {
  description = "Map of pull_request_trigger values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.pull_request_trigger }
}
output "build_definition_lookup_queue_status" {
  description = "Map of queue_status values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.queue_status }
}
output "build_definition_lookup_repository" {
  description = "Map of repository values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.repository }
}
output "build_definition_lookup_revision" {
  description = "Map of revision values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.revision }
}
output "build_definition_lookup_schedules" {
  description = "Map of schedules values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.schedules }
}
output "build_definition_lookup_variable" {
  description = "Map of variable values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.variable }
}
output "build_definition_lookup_variable_groups" {
  description = "Map of variable_groups values across all build_definition_lookup, keyed the same as var.build_definition_lookup"
  value       = { for k, v in data.azuredevops_build_definition.build_definition_lookup : k => v.variable_groups }
}

