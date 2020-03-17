terraform {
  backend "s3" {
    bucket = "eugene-aik-k8s-tfstate-2019"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "${var.region}"
  version = "~> 2.0"
}
