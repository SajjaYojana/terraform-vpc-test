terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws78s-remotestate"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "daws78s"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}