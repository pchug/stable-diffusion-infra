terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cdbd57e40d4eec18"
  instance_type = "t2.small"

  tags = {
    Name = "stable-diffusion-server0"
  }
}
