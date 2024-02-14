resource "aws_iam_group" "ec2-group" {
    name = "${var.name}-group"
}


resource "aws_iam_group_policy_attachment" "group-policy-attachment" {
    group = aws_iam_group.ec2-group.name
    policy_arn = var.policy-arn
}
