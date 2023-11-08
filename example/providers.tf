terraform {
  backend "s3" {
    bucket                      = "terraform-backend"
    endpoint                    = "s3-sg.ufileos.com"
    access_key                  = "PUBLIC_KEY"
    secret_key                  = "PRIVATE_KEY"
    skip_credentials_validation = true
    skip_region_validation      = true
    key                         = "terraform.tfstate"
    region                      = "sg"
  }
  required_providers {
    ucloud = {
      source  = "ucloud/ucloud"
      version = "1.38.2"
    }
  }
}

provider "ucloud" {
  # Configuration options
  public_key  = "PUBLIC_KEY"
  private_key = "PRIVATE_KEY"
  project_id  = "org-04ibqy"
  region      = "sg" //Singapore
  base_url    = "https://api.scloud.sg/"
}
