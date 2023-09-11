terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.22"
    }
  }
  # backend "s3" {
  #   bucket         = "puo-cloud-computing-crashcourse"
  #   key            = "wordpress-terraform/state.tfstate"
  #   region         = "ap-southeast-1"
  #   encrypt        = "true"
  #   dynamodb_table = "erraform-remote-state-dynamodb"
  # }
}

provider "aws" {
  region     = "ap-southeast-1"
  access_key = "change-me"
  secret_key = "change-me"
}
