output "ons_subscriptions_lookup_id" {
  description = "Map of id values across all ons_subscriptions_lookup, keyed the same as var.ons_subscriptions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_ons_subscriptions.ons_subscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ons_subscriptions_lookup_compartment_id" {
  description = "Map of compartment_id values across all ons_subscriptions_lookup, keyed the same as var.ons_subscriptions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_ons_subscriptions.ons_subscriptions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ons_subscriptions_lookup_filter" {
  description = "Map of filter values across all ons_subscriptions_lookup, keyed the same as var.ons_subscriptions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_ons_subscriptions.ons_subscriptions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ons_subscriptions_lookup_subscriptions" {
  description = "Map of subscriptions values across all ons_subscriptions_lookup, keyed the same as var.ons_subscriptions_lookup except keys with no subscriptions are omitted"
  value       = { for k, v in data.oci_ons_subscriptions.ons_subscriptions_lookup : k => v.subscriptions if v.subscriptions != null && length(v.subscriptions) > 0 }
}
output "ons_subscriptions_lookup_topic_id" {
  description = "Map of topic_id values across all ons_subscriptions_lookup, keyed the same as var.ons_subscriptions_lookup except keys with no topic_id are omitted"
  value       = { for k, v in data.oci_ons_subscriptions.ons_subscriptions_lookup : k => v.topic_id if v.topic_id != null && length(v.topic_id) > 0 }
}

