# test of importing infrastructure

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "instance1" {
  ami           = "ami-03aa99ddf5498ceb9"
  instance_type = "t2.micro"

  tags = {
    "Name" = "instance1"
  }
}