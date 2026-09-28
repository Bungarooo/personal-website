terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

# CloudFront certificates must live in us-east-1 (AWS requirement)
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}