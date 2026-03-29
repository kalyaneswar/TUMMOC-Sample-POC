terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "kalyaneswar-remote-state"
    key    = "expense-dev-sg"
    region = "us-east-1"
    dynamodb_table = "kalyan-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}