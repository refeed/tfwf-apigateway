terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_api_gateway_stage" "test" {
  deployment_id = "dummy deployment_id"
  rest_api_id = "dummy rest_api_id"
  stage_name    = "prod"

  access_log_settings {
    destination_arn = "arn:aws:service:us-west-2:aws:resource-id"
    format = "text"
   }
}
