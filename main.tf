data "oci_ons_subscriptions" "ons_subscriptions_lookup" {
  for_each = var.ons_subscriptions_lookup

  compartment_id = each.value.compartment_id
  topic_id       = each.value.topic_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

