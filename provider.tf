provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = "terraform/pas-infra/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.dynamodb_table_name
    encrypt        = true
  }
}
