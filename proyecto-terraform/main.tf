terraform {
  required_version = "1.3.6"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project   = "Serverless REST API Tutorial"
      CreatedAt = "2022-12-05"
      ManagedBy = "Terraform"
      Owner     = "William Yaruro"
      Env       = var.env
    }
  }
}
