terraform {
  backend "s3" {
    bucket = "eugene-aik-kops-2019"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
