resource "aws_iam_role" "ec2-role" {
    name = "${var.name}-role"
    assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  })  
}

resource "aws_iam_policy_attachment" "policy-attachment" {
    name = "${var.name}-policy"
    roles = [aws_iam_role.ec2-role.name]
    policy_arn = var.policy-arn
}

