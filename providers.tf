terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAT6K4GNB2BLHMIZUX"
  secret_key = "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"
}