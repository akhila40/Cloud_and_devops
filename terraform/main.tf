#Reference: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0dba2cb6798deb6d8" # Ubuntu Server 20.04 LTS in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
