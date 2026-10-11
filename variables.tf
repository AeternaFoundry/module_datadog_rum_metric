variable "rum_metrics" {
  description = <<EOT
Map of rum_metrics, attributes below
Required:
    - event_type
    - name
Optional:
    - compute (block):
        - aggregation_type (required)
        - include_percentiles (optional)
        - path (optional)
    - filter (block):
        - query (optional)
    - group_by (block):
        - path (optional)
        - tag_name (optional)
    - uniqueness (block):
        - when (optional)
EOT

  type = map(object({
    event_type = string
    name       = string
    compute = optional(list(object({
      aggregation_type    = string
      include_percentiles = optional(bool)
      path                = optional(string)
    })))
    filter = optional(list(object({
      query = optional(string)
    })))
    group_by = optional(list(object({
      path     = optional(string)
      tag_name = optional(string)
    })))
    uniqueness = optional(list(object({
      when = optional(string)
    })))
  }))
}

