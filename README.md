# scloud-security-group-module

Provides a Security Group resource.

Reference: https://registry.terraform.io/providers/ucloud/ucloud/latest/docs/resources/security_group 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_ucloud"></a> [ucloud](#requirement\_ucloud) | 1.38.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ucloud"></a> [ucloud](#provider\_ucloud) | 1.38.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ucloud_security_group.sg](https://registry.terraform.io/providers/ucloud/ucloud/1.38.2/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name of the security group which contains 1-63 characters and only support Chinese, English, numbers, '-', '\_' and '.'. If not specified, terraform will auto-generate a name beginning with tf-security-group. | `string` | n/a | yes |
| <a name="input_remark"></a> [remark](#input\_remark) | (Optional) The remarks of the security group. (Default: ''). | `string` | `""` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | n/a | <pre>map(object({<br>    port_range = optional(string, "")<br>    cidr_block = optional(string, "")<br>    policy     = optional(string, "accept")<br>    priority   = optional(string, "low")<br>    protocol   = optional(string, "tcp")<br>  }))</pre> | n/a | yes |
| <a name="input_tag"></a> [tag](#input\_tag) | (Optional) A tag assigned to security group, which contains at most 63 characters and only support Chinese, English, numbers, '-', '\_', and '.'. If it is not filled in or a empty string is filled in, then default tag will be assigned. (Default: Default) | `string` | `"Default"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the security group |
<!-- END_TF_DOCS -->