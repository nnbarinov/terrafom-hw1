terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = "~> 1.0"
}

provider "aws" {
  region  = "eu-north-1"
}

data "aws_vpc" "def_vpc" {
  default = true
}

data "aws_subnets" "example" {
}

data "aws_subnet" "example" {
  for_each = toset(data.aws_subnets.example.ids)
  id       = each.value
}

data "aws_security_groups" "default" {
}