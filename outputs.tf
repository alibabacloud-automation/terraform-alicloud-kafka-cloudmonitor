output "this_kafka_instance_id" {
  value = alicloud_alikafka_instance.default.id
}

output "this_kafka_consumer_group_id" {
  value = alicloud_alikafka_consumer_group.default.id
}

output "this_vswitch_id" {
  value = var.vswitch_id
}

output "this_zone_id" {
  value = var.zone_id
}


############
# cms disk_capacity alarm
############
output "this_disk_capacity_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.effective_interval, [""])[0]
}

output "this_disk_capacity_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.id, [""])[0]
}

output "this_disk_capacity_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.name, [""])[0]
}

output "this_disk_capacity_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.project, [""])[0]
}

output "this_disk_capacity_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.metric, [""])[0]
}

output "this_disk_capacity_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = alicloud_cms_alarm.disk_capacity.*.dimensions
}

output "this_disk_capacity_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.period, [""])[0]
}

output "this_disk_capacity_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.disk_capacity.escalations_critical.*.statistics, [""])[0]
}

output "this_disk_capacity_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.disk_capacity.escalations_critical.*.comparison_operator, [""])[0]
}

output "this_disk_capacity_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.disk_capacity.escalations_critical.*.threshold, [""])[0]
}

output "this_disk_capacity_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.disk_capacity.escalations_critical.*.times, [""])[0]
}

output "this_disk_capacity_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.contact_groups, [""])[0]
}

output "this_disk_capacity_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.silence_time, [""])[0]
}

output "this_disk_capacity_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.disk_capacity.*.enabled, [""])[0]
}



############
# cms instance_message_input alarm
############
output "this_instance_message_input_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.effective_interval, [""])[0]
}

output "this_instance_message_input_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.id, [""])[0]
}

output "this_instance_message_input_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.name, [""])[0]
}

output "this_instance_message_input_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.project, [""])[0]
}

output "this_instance_message_input_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.metric, [""])[0]
}

output "this_instance_message_input_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = alicloud_cms_alarm.instance_message_input.*.dimensions
}

output "this_instance_message_input_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.period, [""])[0]
}

output "this_instance_message_input_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical.*.statistics, [""])[0]
}

output "this_instance_message_input_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical.*.comparison_operator, [""])[0]
}

output "this_instance_message_input_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical.*.threshold, [""])[0]
}

output "this_instance_message_input_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical.*.times, [""])[0]
}

output "this_instance_message_input_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.contact_groups, [""])[0]
}

output "this_instance_message_input_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.silence_time, [""])[0]
}

output "this_instance_message_input_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input.*.enabled, [""])[0]
}


############
# cms instance_message_output alarm
############
output "this_instance_message_output_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.effective_interval, [""])[0]
}

output "this_instance_message_output_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.id, [""])[0]
}

output "this_instance_message_output_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.name, [""])[0]
}

output "this_instance_message_output_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.project, [""])[0]
}

output "this_instance_message_output_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.metric, [""])[0]
}

output "this_instance_message_output_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = alicloud_cms_alarm.instance_message_output.*.dimensions
}

output "this_instance_message_output_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.period, [""])[0]
}

output "this_instance_message_output_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical.*.statistics, [""])[0]
}

output "this_instance_message_output_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical.*.comparison_operator, [""])[0]
}

output "this_instance_message_output_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical.*.threshold, [""])[0]
}

output "this_instance_message_output_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical.*.times, [""])[0]
}

output "this_instance_message_output_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.contact_groups, [""])[0]
}

output "this_instance_message_output_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.silence_time, [""])[0]
}

output "this_instance_message_output_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output.*.enabled, [""])[0]
}
