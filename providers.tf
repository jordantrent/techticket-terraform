terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  #   shared_config_files      = ["/Users/tf_user/.aws/conf"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "credentials"
}