resource "aws_iam_group" "s3-group" {
  name = "${var.name}-group"
 }

 resource "aws_iam_group_policy_attachment" "s3-group-policy" {
    policy_arn = var.s3-policy-arn
    group = aws_iam_group.s3-group.name
 }