terraform {
  backend "s3" {
    bucket = "app1-b1"
    key    = "state"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}