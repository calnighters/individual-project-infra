resource "aws_iam_user" "user" {
  name = var.iam_user_name
}

resource "aws_iam_policy_attachment" "attachment" {
  name = "dc3ipr-test-policy-attachment"
  users = [aws_iam_user.user.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}