terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}
provider "aws" {
    region="us-east-1"
}

resource "aws_instance" "terraform_instance" {
  ami = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  tags = {
    Name = "Test_terraform_tvnguyen"
  }
}

resource "aws_ebs_volume" "terraform_ebs" {
  availability_zone = "us-east-1d"
  size = 2
  tags = {
    Name = "Test_terraform_tvnguyen"
  }
}