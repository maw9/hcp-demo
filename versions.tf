terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.66.0"
    }
  }
  required_version = "1.15.8"

  cloud {
    organization = "maw9_tfc"

    workspaces {
      name = "cli-ws"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"
  default_tags {
    tags = {
      Environment = "Dev"
      Region      = "Singapore"
    }
  }
}