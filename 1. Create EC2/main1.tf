
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARZLWNF4Z2A5L5KCI"
  secret_key = "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"
}


resource "aws_s3_bucket" "invoice-bucket" {
  bucket = "eni-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "main"
  }
}
