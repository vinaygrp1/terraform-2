terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }

  backend "s3" {
    bucket = "vinaydevops-remote-state-1"
    key = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "vinaydevops-locking-1"
  }
}
#provide authentication here
provider "aws" {
  region = "us-east-1"
}