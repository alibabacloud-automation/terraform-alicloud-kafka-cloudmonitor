locals {
  project               = "acs_kafka"
}

#kafka instance
resource "alicloud_alikafka_instance" "default" {
  name        = var.kafka_instance_name
  topic_quota = var.topic_quota
  disk_type   = var.disk_type
  disk_size   = var.disk_size
  deploy_type = var.deploy_type
  io_max      = var.io_max
  vswitch_id  = var.vswitch_id
}

resource "alicloud_alikafka_consumer_group" "default" {
  consumer_id = var.consumer_id
  instance_id = alicloud_alikafka_instance.default.id
}

#instance_disk_capacity
resource "alicloud_cms_alarm" "disk_capacity" {
  enabled = var.disk_capacity_enable_alarm_rule
  name    = var.disk_capacity_alarm_rule_name
  project = local.project
  metric  = var.alarm_disk_capacity_metric
  dimensions = {
    instanceId = alicloud_alikafka_instance.default.id
    userId=var.alarm_user_id
  }
  escalations_critical {
    statistics = var.disk_capacity_alarm_rule_statistics
    comparison_operator = var.disk_capacity_alarm_rule_operator
    threshold = var.disk_capacity_alarm_rule_threshold
    times = var.disk_capacity_times
  }
  period             = var.disk_capacity_alarm_rule_period
  contact_groups     = var.disk_capacity_alarm_rule_contact_groups
  silence_time       = var.disk_capacity_alarm_rule_silence_time
  effective_interval = var.disk_capacity_alarm_rule_effective_interval
}

#instance_message_input
resource "alicloud_cms_alarm" "instance_message_input" {
  enabled = var.instance_message_input_enable_alarm_rule
  name    = var.instance_message_input_alarm_rule_name
  project = local.project
  metric  = var.alarm_instance_message_input_metric
  dimensions = {
    instanceId = alicloud_alikafka_instance.default.id
    userId=var.alarm_user_id
  }
  escalations_critical {
    statistics = var.instance_message_input_alarm_rule_statistics
    comparison_operator = var.instance_message_input_alarm_rule_operator
    threshold = var.instance_message_input_alarm_rule_threshold
    times = var.instance_message_input_times
  }
  period             = var.instance_message_input_alarm_rule_period
  contact_groups     = var.instance_message_input_alarm_rule_contact_groups
  silence_time       = var.instance_message_input_alarm_rule_silence_time
  effective_interval = var.instance_message_input_alarm_rule_effective_interval
}


#instance_message_output
resource "alicloud_cms_alarm" "instance_message_output" {
  enabled = var.instance_message_output_enable_alarm_rule
  name    = var.instance_message_output_alarm_rule_name
  project = local.project
  metric  = var.alarm_instance_message_output_metric
  dimensions = {
    instanceId = alicloud_alikafka_instance.default.id
    userId=var.alarm_user_id
  }
  escalations_critical {
    statistics = var.instance_message_output_alarm_rule_statistics
    comparison_operator = var.instance_message_output_alarm_rule_operator
    threshold = var.instance_message_output_alarm_rule_threshold
    times = var.instance_message_output_times
  }
  period             = var.instance_message_output_alarm_rule_period
  contact_groups     = var.instance_message_output_alarm_rule_contact_groups
  silence_time       = var.instance_message_output_alarm_rule_silence_time
  effective_interval = var.instance_message_output_alarm_rule_effective_interval
}