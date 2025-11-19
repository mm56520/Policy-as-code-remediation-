package s3

deny_public_bucket {
  input.resource_type == "aws_s3_bucket"
  input.acl == "public-read"
}
