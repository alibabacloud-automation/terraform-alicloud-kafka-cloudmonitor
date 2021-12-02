data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
  enable_details              = true
}
data "alicloud_vpcs" "default" {
  is_default = true
}
resource "alicloud_vpc" "default" {
  count = length(data.alicloud_vpcs.default.ids) > 0 ? 0 : 1
  vpc_name   = "terraform_test"
  cidr_block = "172.16.0.0/16"
}
data "alicloud_vswitches" "default" {
  zone_id = data.alicloud_zones.default.zones.0.id
  vpc_id =  length(data.alicloud_vpcs.default.ids) > 0 ? "${data.alicloud_vpcs.default.ids.0}" : alicloud_vpc.default.0.id
}
resource "alicloud_vswitch" "default" {
  count = length(data.alicloud_vswitches.default.ids) > 0 ? 0 : 1
  vswitch_name = "terraform_test"
  cidr_block   = "172.16.0.0/16"
  vpc_id       = length(data.alicloud_vpcs.default.ids) > 0 ?  data.alicloud_vpcs.default.vpcs.0.id : alicloud_vpc.default.0.id
  zone_id      = data.alicloud_zones.default.zones.0.id
}

module "example" {
  source             = "../"
  vswitch_id         = length(data.alicloud_vswitches.default.ids) > 0 ? data.alicloud_vswitches.default.ids.0 : alicloud_vswitch.default.0.id
}
