variable "ons_subscriptions_lookup" {
  description = <<EOT
Map of ons_subscriptions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - topic_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    topic_id       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

