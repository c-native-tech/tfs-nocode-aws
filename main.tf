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
  region  = var.region                    
}


# Configure VPC
resource "aws_vpc" "tfs_handson_testX" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.tag_name
    CTC_Bill01_Owner = "CTC"
    CTC_Bill02_System = "Transformation-Service"
  }
}


