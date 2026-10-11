variable "build_definition_lookup" {
  description = <<EOT
Map of build_definition_lookup, attributes below
Required:
    - name
    - project_id
Optional:
    - path
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name       = string
    project_id = string
    path       = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.build_definition_lookup : (
        v.path == null || (length(v.path) >= 1)
      )
    ])
    error_message = "[from validate.Path: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.build_definition_lookup : (
        alltrue([for x in v.variable_groups : x >= 1])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.build_definition_lookup : (
        alltrue([for item in v.schedules : (item.days_to_build == null || (alltrue([for x in item.days_to_build : contains(["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"], x)])))])
      )
    ])
    error_message = "must be one of: \"Mon\", \"Tue\", \"Wed\", \"Thu\", \"Fri\", \"Sat\", \"Sun\""
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

