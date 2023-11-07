rules = {
  rule1 = {
    port_range = "22"
    cidr_block = "0.0.0.0/0"
    policy     = "accept"
    priority   = "low"
    protocol   = "tcp"
  },
  rule2 = {
    port_range = "80"
    cidr_block = "0.0.0.0/0"
    policy     = "accept"
    priority   = "low"
    protocol   = "tcp"
  }
}
