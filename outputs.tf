output "logs_index_orders_id" {
  description = "Map of id values across all logs_index_orders, keyed the same as var.logs_index_orders except keys with no id are omitted"
  value       = { for k, v in datadog_logs_index_order.logs_index_orders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_index_orders_indexes" {
  description = "Map of indexes values across all logs_index_orders, keyed the same as var.logs_index_orders except keys with no indexes are omitted"
  value       = { for k, v in datadog_logs_index_order.logs_index_orders : k => v.indexes if v.indexes != null && length(v.indexes) > 0 }
}
output "logs_index_orders_name" {
  description = "Map of name values across all logs_index_orders, keyed the same as var.logs_index_orders except keys with no name are omitted"
  value       = { for k, v in datadog_logs_index_order.logs_index_orders : k => v.name if v.name != null && length(v.name) > 0 }
}

