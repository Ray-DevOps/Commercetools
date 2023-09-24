terraform {
  required_version = "1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }

  backend "s3" {
    region = "us-east-1"
    bucket = "commercetools-tech-interview"
    key    = "commercetools/vpc"
  }
}

provider "aws" {
  region = "us-east-1"
  allowed_account_ids = [
    "076656220506",
  ]
}
