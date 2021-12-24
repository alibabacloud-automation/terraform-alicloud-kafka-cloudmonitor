#kafka instance
kafka_instance_name = "update_kafka_instance_name"
topic_quota         = "60"
disk_size           = "900"
io_max              = "30"

#instance_disk_capacity
disk_capacity_enable_alarm_rule             = false
disk_capacity_alarm_rule_name               = "update_disk_capacity_alarm_rule_name"
disk_capacity_alarm_rule_statistics         = "Average"
disk_capacity_alarm_rule_operator           = "<="
disk_capacity_alarm_rule_threshold          = "35"
disk_capacity_times                         = "5"
disk_capacity_alarm_rule_period             = "900"
disk_capacity_alarm_rule_silence_time       = 10000
disk_capacity_alarm_rule_effective_interval = "0:00-4:00"

#instance_message_input
instance_message_input_enable_alarm_rule             = false
instance_message_input_alarm_rule_name               = "update_instance_message_input_alarm_rule_name"
instance_message_input_alarm_rule_statistics         = "Average"
instance_message_input_alarm_rule_operator           = "<="
instance_message_input_alarm_rule_threshold          = "35"
instance_message_input_times                         = "5"
instance_message_input_alarm_rule_period             = "900"
instance_message_input_alarm_rule_silence_time       = 10000
instance_message_input_alarm_rule_effective_interval = "0:00-4:00"

#instance_message_output
instance_message_output_enable_alarm_rule             = false
instance_message_output_alarm_rule_name               = "update_instance_message_output_alarm_rule_name"
instance_message_output_alarm_rule_statistics         = "Average"
instance_message_output_alarm_rule_operator           = "<="
instance_message_output_alarm_rule_threshold          = "35"
instance_message_output_times                         = "5"
instance_message_output_alarm_rule_period             = "900"
instance_message_output_alarm_rule_silence_time       = 10000
instance_message_output_alarm_rule_effective_interval = "0:00-4:00"