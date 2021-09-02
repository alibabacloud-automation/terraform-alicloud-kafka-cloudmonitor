variable "kafka_instance_name" {
  description = "The specification of kafka instance name."
  type        = string
  default     = "kafka_instance_name_test"
}
variable "consumer_id" {
  description = "The specification of kafka consumer_id."
  type        = string
  default     = "CID-alikafkaGroupDatasourceName"
}

variable "zone_id" {
  description = "The specification of zone msg."
  type        = string
  default     = "cn-hangzhou-e"
}

variable "vswitch_id" {
  description = "The specification of vswitch_id."
  type        = string
  default     = "vsw-bp1lah4d567n4wwd59zle"
}

variable "topic_quota" {
  description = "The max num of topic can be create of the instance. When modify this value, it only adjust to a greater value."
  type        = string
  default     = "50"
}
variable "disk_type" {
  description = "The disk type of the instance. 0: efficient cloud disk,1: SSD."
  type        = string
  default     = "1"
}
variable "disk_size" {
  description = "The disk size of the instance. When modify this value, it only support adjust to a greater value."
  type        = string
  default     = "500"
}
variable "deploy_type" {
  description = "The deploy type of the instance. Currently only support two deploy type, 4: eip/vpc instance, 5: vpc instance."
  type        = string
  default     = "5"
}
variable "io_max" {
  description = "The max value of io of the instance. When modify this value, it only support adjust to a greater value."
  type        = string
  default     = "20"
}


variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}


#############
# disk_capacity alarm
#############
variable "disk_capacity_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "disk_capacity_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "disk_capacity_test_rule_name"
}

variable "alarm_disk_capacity_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "instance_disk_capacity"
}

variable "disk_capacity_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "disk_capacity_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Maximum"
}

variable "disk_capacity_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "disk_capacity_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "disk_capacity_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}


variable "disk_capacity_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "disk_capacity_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "disk_capacity_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}
variable "alarm_user_id" {
  description = "The alarm of userId."
  type        = string
  default     = "test"
}


#############
# cms instance_message_input alarm
#############
variable "instance_message_input_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_input_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "disk_capacity_test_rule_name"
}

variable "alarm_instance_message_input_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "instance_disk_capacity"
}

variable "instance_message_input_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "instance_message_input_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Value"
}

variable "instance_message_input_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "instance_message_input_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "instance_message_input_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}


variable "instance_message_input_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "instance_message_input_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "instance_message_input_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}


#############
# cms instance_message_output alarm
#############
variable "instance_message_output_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_output_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "disk_capacity_test_rule_name"
}

variable "alarm_instance_message_output_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "instance_disk_capacity"
}

variable "instance_message_output_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "instance_message_output_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Value"
}

variable "instance_message_output_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "instance_message_output_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "instance_message_output_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}


variable "instance_message_output_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "instance_message_output_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "instance_message_output_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}