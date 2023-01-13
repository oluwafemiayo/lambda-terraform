terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
 }
# module "lambda" {
#   source  = "terraform-aws-modules/lambda/aws"
#   version = "4.7.2"
# }
# provider "aws" {
#   # Configuration options
#   region                  = var.region
#   profile                 = var.aws_profile
#   default_tags {
#     tags = var.tags
#   }
# }

