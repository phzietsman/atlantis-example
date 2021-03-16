terraform {

    // Atlantis will download this
    required_version = "0.12.26"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_ssm_parameter" "atlantis" {
  name  = "atlantis-${var.env}"
  type  = "String"
  value = terraform.workspace
}


variable "env" {
    type = string
    default = "default"
}