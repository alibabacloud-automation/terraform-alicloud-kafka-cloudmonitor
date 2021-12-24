##############################################################
#variables for alicloud_alikafka_instance
##############################################################
variable "kafka_instance_name" {
  description = "The specification of kafka instance name."
  type        = string
  default     = "kafka_instance_name"
}

variable "topic_quota" {
  description = "The max num of topic can be create of the instance. When modify this value, it only adjust to a greater value."
  type        = string
  default     = "50"
}

variable "disk_size" {
  description = "The disk size of the instance. When modify this value, it only support adjust to a greater value."
  type        = string
  default     = "500"
}

variable "io_max" {
  description = "The max value of io of the instance. When modify this value, it only support adjust to a greater value."
  type        = string
  default     = "20"
}

##############################################################
#variables for alicloud_cms_alarm disk_capacity
##############################################################
variable "disk_capacity_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "disk_capacity_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "disk_capacity_alarm_rule_name"
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

##############################################################
#variables for alicloud_cms_alarm instance_message_input
##############################################################
variable "instance_message_input_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_input_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "instance_message_input_alarm_rule_name"
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

##############################################################
#variables for alicloud_cms_alarm instance_message_output
##############################################################
variable "instance_message_output_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_output_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "instance_message_output_alarm_rule_name"
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