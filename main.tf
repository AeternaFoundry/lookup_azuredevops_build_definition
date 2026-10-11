data "azuredevops_build_definition" "build_definition_lookup" {
  for_each = var.build_definition_lookup

  name       = each.value.name
  project_id = each.value.project_id
  path       = each.value.path

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

