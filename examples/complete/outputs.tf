output "kafka_instance_id" {
  value       = module.example.this_kafka_instance_id
  description = "The id of the kafka instance."
}
output "this_disk_capacity_alarm_rule_id" {
  value       = module.example.this_disk_capacity_alarm_rule_id
  description = "The id of the disk capacity alarm rule."
}
