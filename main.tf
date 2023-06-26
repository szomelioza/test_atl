terraform {
  backend "s3" {
    bucket = "terraform-states-999"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_sqs_queue" "my_queue" {
  name                      = "dummy-q"
  visibility_timeout_seconds = 300
  message_retention_seconds = 86400
}
