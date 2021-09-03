Terraform module which creates Kafka and cloudMonitor instance on Alibaba Cloud  

terraform-alicloud-message-transfer-kafka
---

English | [简体中文](README-CN.md)

This module is used to create an Alibaba Cloud kafka instance and a cloudMonitor instance

These types of resources are supported:

* [alicloud_kafka_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/alikafka_instance)
* [alicloud_cloud_monitor_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cms_alarm)



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.115.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.115.0 |

## Usage

```hcl
module "tf-kafka-cloudmonitor" {
  source            = "terraform-alicloud-modules/kafka-cloudmonitor/alicloud"
  name              = "tf-message-transfer-kafka"
  vswitch_id        = "1234"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

## Authors

Created and maintained by maiqiao(bj090628@16.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
