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
resource "aws_vpc" "tfs_handson_testX" {        ## リネーム：X の箇所を自身に振られた番号に修正
  cidr_block           = var.vpc_cidr       ## リネーム：X の箇所を自身に振られた番号に修正
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.tag_name              ## リネーム：X の箇所を自身に振られた番号に修正
    CTC_Bill01_Owner = "CTC"
    CTC_Bill02_System = "Transformation-Service"
  }
}


