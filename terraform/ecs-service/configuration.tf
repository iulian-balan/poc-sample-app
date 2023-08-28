terraform {
  backend "s3" {
    bucket = "poc-tf-state-files"
    key    = "poc-ecs/ecs-service.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}