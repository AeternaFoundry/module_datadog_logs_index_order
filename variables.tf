variable "logs_index_orders" {
  description = <<EOT
Map of logs_index_orders, attributes below
Required:
    - indexes
Optional:
    - name
EOT

  type = map(object({
    indexes = list(string)
    name    = optional(string)
  }))
}

