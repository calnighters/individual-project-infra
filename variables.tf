variable "bucket_names" {
  type = set(string)
  default = ["dc3ipr-bucket-data-1", "dc3ipr-bucket-data-2", "dc3ipr-bucket-audit"]
}

variable "iam_user_name" {
    type = string
    default = "dc3ipr-test-user"
}