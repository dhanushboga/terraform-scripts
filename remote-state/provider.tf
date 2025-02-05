terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-chenchu-state"
    key    = "ec2-info" #unique keys within the bucket and same key cannot be use
    region = "us-east-1"
    dynamodb_table = "82s-chenchu"
  }
}



provider "aws" {
  region = "us-east-1"
}