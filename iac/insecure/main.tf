provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "public_bucket" {
  bucket = "capstone-insecure-bucket"
  acl    = "public-read"

  tags = {
    Name        = "Insecure S3 Bucket"
    Environment = "Test"
  }
}

resource "aws_s3_bucket_public_access_block" "public_block" {
  bucket = aws_s3_bucket.public_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
