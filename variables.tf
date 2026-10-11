variable "apps_queries_query_v1s" {
  description = <<EOT
Map of apps_queries_query_v1s, attributes below
Optional:
    - metadata (block):
        - folder_uid (optional)
        - uid (required)
    - options (block):
        - manager_identity (optional)
        - overwrite (optional)
    - spec (block):
        - description (optional)
        - is_locked (optional)
        - is_visible (optional)
        - tags (optional)
        - targets (optional, block):
            - data_type (optional)
            - properties_json (required)
            - variables_json (optional)
        - title (required)
        - vars (optional, block):
            - default_values (optional)
            - key (required)
            - value_list_definition_json (optional)
EOT

  type = map(object({
    metadata = optional(list(object({
      folder_uid = optional(string)
      uid        = string
    })))
    options = optional(list(object({
      manager_identity = optional(string)
      overwrite        = optional(bool)
    })))
    spec = optional(list(object({
      description = optional(string)
      is_locked   = optional(bool)
      is_visible  = optional(bool)
      tags        = optional(set(string))
      targets = optional(list(object({
        data_type       = optional(string)
        properties_json = string
        variables_json  = optional(string)
      })))
      title = string
      vars = optional(list(object({
        default_values             = optional(list(string))
        key                        = string
        value_list_definition_json = optional(string)
      })))
    })))
  }))
}

