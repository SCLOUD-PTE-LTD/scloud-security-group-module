terraform {
  required_providers {
    ucloud = {
      source  = "ucloud/ucloud"
      version = "1.38.2"
    }
  }
}

resource "ucloud_security_group" "sg" {
  name   = var.name
  remark = var.remark

  dynamic "rules" {
    for_each = var.rules
    iterator = rule
    content {
      port_range = rule.value.port_range
      cidr_block = rule.value.cidr_block
      policy     = rule.value.policy
      priority   = rule.value.priority
      protocol   = rule.value.protocol
    }
  }

  tag = var.tag
}
