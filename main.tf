# Terraform block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-vpc"
  }
}

# Creating EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-0578f2b35d0328762"
  instance_type = "t3.micro"
  
  tags = {
    Name = "my-ec2"
  }
}