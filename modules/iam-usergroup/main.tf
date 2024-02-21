resource "aws_iam_group" "rds-group" {
  name = "${var.name}-group"
 }


resource "aws_iam_group_policy_attachment" "s3-group-policy" {
    policy_arn = var.rds-policy-arn
    group = aws_iam_group.rds-group.name
}