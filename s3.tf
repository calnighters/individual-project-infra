resource "aws_s3_bucket" "bucket" {
    for_each = var.bucket_names
    bucket = each.value
}

resource "aws_s3_bucket_public_access_block" "name" {
  for_each = var.bucket_names
  bucket = each.value
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}