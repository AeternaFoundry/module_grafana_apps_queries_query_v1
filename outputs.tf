output "apps_queries_query_v1s_id" {
  description = "Map of id values across all apps_queries_query_v1s, keyed the same as var.apps_queries_query_v1s except keys with no id are omitted"
  value       = { for k, v in grafana_apps_queries_query_v1.apps_queries_query_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apps_queries_query_v1s_metadata" {
  description = "Map of metadata values across all apps_queries_query_v1s, keyed the same as var.apps_queries_query_v1s except keys with no metadata are omitted"
  value       = { for k, v in grafana_apps_queries_query_v1.apps_queries_query_v1s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "apps_queries_query_v1s_options" {
  description = "Map of options values across all apps_queries_query_v1s, keyed the same as var.apps_queries_query_v1s except keys with no options are omitted"
  value       = { for k, v in grafana_apps_queries_query_v1.apps_queries_query_v1s : k => v.options if v.options != null && length(v.options) > 0 }
}
output "apps_queries_query_v1s_spec" {
  description = "Map of spec values across all apps_queries_query_v1s, keyed the same as var.apps_queries_query_v1s except keys with no spec are omitted"
  value       = { for k, v in grafana_apps_queries_query_v1.apps_queries_query_v1s : k => v.spec if v.spec != null && length(v.spec) > 0 }
}

