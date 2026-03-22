terraform {
  backend "s3" {
    bucket         = "aakash-k8s-devsecops-tf-state"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/Jenkins-Server-TF/terraform.tfstate"
    region         = "ap-south-1"                         
    encrypt        = true
    dynamodb_table = "terraform-lock-table"             
  }

  required_version = ">= 1.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.23.0"
    }
  }
}