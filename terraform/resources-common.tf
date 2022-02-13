##################################################################################
# PROVIDERS
##################################################################################

## We require AWS > 2.40.0 to support NodeJS 12
terraform {
  required_providers {
    aws = ">= 4.00.0"
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "eu-west-3"
}

##################################################################################
# RESOURCES
##################################################################################

resource "aws_s3_bucket" "feed2twitter-bucket" {
  bucket = "feed2twitter-christoff.net"
  force_destroy = "true"
}
