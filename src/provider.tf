terraform {
  required_version = ">= 0.12.6"

  required_providers {
    aws = ">= 3.34"
  }

}

provider "aws" {
  region = "eu-west-1"
}
