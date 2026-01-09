terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  # Backend لتخزين حالة Terraform في S3
  backend "s3" {
    bucket = "razane-eks-bucket1-be8a7cc8"   # ← غيّرنا الاسم ليطابق الـ bucket الجديد
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}

provider "aws" {
  region = "us-east-1"
}
