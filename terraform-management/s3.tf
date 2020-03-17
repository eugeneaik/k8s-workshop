resource "aws_s3_bucket" "eugene-aik-k8s-kops" {
  bucket = "eugene-aik-kops-2019"
  acl    = "private"
}
