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
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04ff98ccbfa41c9ad"
  instance_type = "t2.large"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
