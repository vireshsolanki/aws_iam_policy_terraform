output "s3-role-arn" {
    value = aws_iam_role.s3-role.arn
}
output "s3-role-name" {
    value = aws_iam_role.s3-role.name
}