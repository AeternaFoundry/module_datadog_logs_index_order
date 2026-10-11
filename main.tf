resource "datadog_logs_index_order" "logs_index_orders" {
  for_each = var.logs_index_orders

  indexes = each.value.indexes
  name    = each.value.name
}

