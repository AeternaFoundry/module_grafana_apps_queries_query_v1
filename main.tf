resource "grafana_apps_queries_query_v1" "apps_queries_query_v1s" {
  for_each = var.apps_queries_query_v1s


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      folder_uid = metadata.value.folder_uid
      uid        = metadata.value.uid
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      manager_identity = options.value.manager_identity
      overwrite        = options.value.overwrite
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? each.value.spec : []
    content {
      description = spec.value.description
      is_locked   = spec.value.is_locked
      is_visible  = spec.value.is_visible
      tags        = spec.value.tags
      dynamic "targets" {
        for_each = spec.value.targets != null ? spec.value.targets : []
        content {
          data_type       = targets.value.data_type
          properties_json = targets.value.properties_json
          variables_json  = targets.value.variables_json
        }
      }
      title = spec.value.title
      dynamic "vars" {
        for_each = spec.value.vars != null ? spec.value.vars : []
        content {
          default_values             = vars.value.default_values
          key                        = vars.value.key
          value_list_definition_json = vars.value.value_list_definition_json
        }
      }
    }
  }
}

