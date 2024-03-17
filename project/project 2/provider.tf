terraform {
  backend "s3" {
    bucket = "app2-b2"
    key    = "state"
    region = "ap-northeast-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
}