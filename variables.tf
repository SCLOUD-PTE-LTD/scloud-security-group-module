variable "name" {
  description = "(Optional) The name of the security group which contains 1-63 characters and only support Chinese, English, numbers, '-', '_' and '.'. If not specified, terraform will auto-generate a name beginning with tf-security-group."
  type        = string
}

variable "remark" {
  description = "(Optional) The remarks of the security group. (Default: '')."
  type        = string
  default     = ""
}

variable "tag" {
  description = "(Optional) A tag assigned to security group, which contains at most 63 characters and only support Chinese, English, numbers, '-', '_', and '.'. If it is not filled in or a empty string is filled in, then default tag will be assigned. (Default: Default)"
  type        = string
  default     = "Default"
}

variable "rules" {
  type = map(object({
    port_range = optional(string, "")
    cidr_block = optional(string, "")
    policy     = optional(string, "accept")
    priority   = optional(string, "low")
    protocol   = optional(string, "tcp")
  }))
}
