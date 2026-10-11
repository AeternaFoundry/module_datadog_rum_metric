output "rum_metrics_id" {
  description = "Map of id values across all rum_metrics, keyed the same as var.rum_metrics except keys with no id are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rum_metrics_compute" {
  description = "Map of compute values across all rum_metrics, keyed the same as var.rum_metrics except keys with no compute are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.compute if v.compute != null && length(v.compute) > 0 }
}
output "rum_metrics_event_type" {
  description = "Map of event_type values across all rum_metrics, keyed the same as var.rum_metrics except keys with no event_type are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.event_type if v.event_type != null && length(v.event_type) > 0 }
}
output "rum_metrics_filter" {
  description = "Map of filter values across all rum_metrics, keyed the same as var.rum_metrics except keys with no filter are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "rum_metrics_group_by" {
  description = "Map of group_by values across all rum_metrics, keyed the same as var.rum_metrics except keys with no group_by are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.group_by if v.group_by != null && length(v.group_by) > 0 }
}
output "rum_metrics_name" {
  description = "Map of name values across all rum_metrics, keyed the same as var.rum_metrics except keys with no name are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rum_metrics_uniqueness" {
  description = "Map of uniqueness values across all rum_metrics, keyed the same as var.rum_metrics except keys with no uniqueness are omitted"
  value       = { for k, v in datadog_rum_metric.rum_metrics : k => v.uniqueness if v.uniqueness != null && length(v.uniqueness) > 0 }
}

