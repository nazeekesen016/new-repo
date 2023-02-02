provider "aws" {
  region = "eu-west-1"
}

# terraform {
#   cloud {
#     organization = "common1"

#     workspaces {
#       name = "common1"
#     }
#   }
# }

resource "aws_instance" "jakshylyk" {
  ami           = var.ami
  subnet_id     = var.subnet_id
  instance_type = var.instance_type

  tags = {
    name = var.name
  }
}

# resource "aws_vpc" "vpc" {
#   cidr_block = "10.0.0.0/16"

#   tags = {
#     name = var.name
#   }
# }
