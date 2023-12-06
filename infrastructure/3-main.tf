terraform {
  backend "s3" {
    bucket  = "infraestruture-states" # Your unique AWS S3 bucket
    key     = "develop/demo.tfstate"
    region  = "" //region of s3 aqui
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"

  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManagedBy   = "Terraform"
    Owner       = "flower lewyn cordoba moreno" # Your fullname
  }
}
