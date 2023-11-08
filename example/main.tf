resource "random_pet" "server" {
  length = 1
}
module "ucloud_security_group" {
  source = "../"
  name   = "sg-${random_pet.server.id}"
  remark = "This is an example security group"
  tag    = "Defaults"
  rules  = var.rules
}
