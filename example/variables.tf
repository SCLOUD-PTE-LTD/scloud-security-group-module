variable "rules" {
  type = map(object({
    port_range = optional(string, "")
    cidr_block = optional(string, "")
    policy     = optional(string, "accept")
    priority   = optional(string, "low")
    protocol   = optional(string, "tcp")
  }))
}
