resource "aws_iam_role" "s3-role" {
  name               = "${var.name}-role"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "s3.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
})
}


resource "aws_iam_role_policy_attachment" "s3_access_attachment" {
  role       = aws_iam_role.s3-role.name
  policy_arn = var.s3-policy-arn
}