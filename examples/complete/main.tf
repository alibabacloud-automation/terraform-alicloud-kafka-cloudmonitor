data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
  enable_details              = true
}

data "alicloud_cms_alarm_contact_groups" "default" {
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_cidr           = "172.16.0.0/16"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_zones.default.zones.0.id]
}

module "example" {
  source     = "../.."
  vswitch_id = module.vpc.this_vswitch_ids[0]

  #kafka instance
  kafka_instance_name = var.kafka_instance_name
  topic_quota         = var.topic_quota
  disk_type           = "1"
  disk_size           = var.disk_size
  deploy_type         = "5"
  io_max              = var.io_max

  #alicloud_alikafka_consumer_group
  consumer_id = "CID-alikafkaGroupDatasourceName"

  #instance_disk_capacity
  alarm_user_id = "test"

  disk_capacity_enable_alarm_rule             = var.disk_capacity_enable_alarm_rule
  disk_capacity_alarm_rule_name               = var.disk_capacity_alarm_rule_name
  alarm_disk_capacity_metric                  = "instance_disk_capacity"
  disk_capacity_alarm_rule_statistics         = var.disk_capacity_alarm_rule_statistics
  disk_capacity_alarm_rule_operator           = var.disk_capacity_alarm_rule_operator
  disk_capacity_alarm_rule_threshold          = var.disk_capacity_alarm_rule_threshold
  disk_capacity_times                         = var.disk_capacity_times
  disk_capacity_alarm_rule_period             = var.disk_capacity_alarm_rule_period
  disk_capacity_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  disk_capacity_alarm_rule_silence_time       = var.disk_capacity_alarm_rule_silence_time
  disk_capacity_alarm_rule_effective_interval = var.disk_capacity_alarm_rule_effective_interval

  #instance_message_input
  instance_message_input_enable_alarm_rule             = var.instance_message_input_enable_alarm_rule
  instance_message_input_alarm_rule_name               = var.instance_message_input_alarm_rule_name
  alarm_instance_message_input_metric                  = "instance_disk_capacity"
  instance_message_input_alarm_rule_statistics         = var.instance_message_input_alarm_rule_statistics
  instance_message_input_alarm_rule_operator           = var.instance_message_input_alarm_rule_operator
  instance_message_input_alarm_rule_threshold          = var.instance_message_input_alarm_rule_threshold
  instance_message_input_times                         = var.instance_message_input_times
  instance_message_input_alarm_rule_period             = var.instance_message_input_alarm_rule_period
  instance_message_input_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  instance_message_input_alarm_rule_silence_time       = var.instance_message_input_alarm_rule_silence_time
  instance_message_input_alarm_rule_effective_interval = var.instance_message_input_alarm_rule_effective_interval

  #instance_message_output
  instance_message_output_enable_alarm_rule             = var.instance_message_output_enable_alarm_rule
  instance_message_output_alarm_rule_name               = var.instance_message_output_alarm_rule_name
  alarm_instance_message_output_metric                  = "instance_disk_capacity"
  instance_message_output_alarm_rule_statistics         = var.instance_message_output_alarm_rule_statistics
  instance_message_output_alarm_rule_operator           = var.instance_message_output_alarm_rule_operator
  instance_message_output_alarm_rule_threshold          = var.instance_message_output_alarm_rule_threshold
  instance_message_output_times                         = var.instance_message_output_times
  instance_message_output_alarm_rule_period             = var.instance_message_output_alarm_rule_period
  instance_message_output_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  instance_message_output_alarm_rule_silence_time       = var.instance_message_output_alarm_rule_silence_time
  instance_message_output_alarm_rule_effective_interval = var.instance_message_output_alarm_rule_effective_interval

}
