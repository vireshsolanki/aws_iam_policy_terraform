resource "aws_iam_role" "rds-role" {
  name = "${var.name}-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "rds.amazonaws.com"
        }
      },
    ]
  })
  tags = {
    Name = "${var.name}-role"
  }

}


resource "aws_iam_role_policy_attachment" "rds-policy-attach"  {
    policy_arn = var.rds-policy-arn
    role = aws_iam_role.rds-role.name
  
}