terraform {
  required_providers {
    ucloud = {
      source  = "ucloud/ucloud"
      version = "1.38.2"
    }
  }
}

provider "ucloud" {
  # Configuration options
  public_key  = "YOUR_PUBLIC_KEY"
  private_key = "YOUR_PRIVATE_KEY"
  project_id  = "YOUR_PROJECT_ID"
  region      = "sg" //Singapore
  base_url    = "https://api.scloud.sg/"
}

module "ucloud_security_group" {
  source = "../"
  name   = "example-sg"
  remark = "This is an example security group"
  tag    = "Defaults"
  rules  = var.rules
}
