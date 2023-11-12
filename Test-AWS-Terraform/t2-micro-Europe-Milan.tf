terraform {
//if need to use the Terraform Cloud:
  cloud {
    organization = "Type-the-organization-name"
    workspaces {
      name = "test"
    }
  }
//end

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-south-1" // "Europe (Milan)"
}

resource "aws_instance" "ubuntu-t2-micro" {
  ami           = var.ubuntu-ami
  instance_type = "t2.micro"

  tags = {
    Name = var.my-test-instance
  }
}
