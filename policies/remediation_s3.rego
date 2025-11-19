resource "aws_s3_bucket" "secure_bucket" {
  bucket = "mybucket"
  acl    = "private"
}
