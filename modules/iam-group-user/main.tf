resource "aws_iam_user" "s3-user" {
    for_each = var.username
    name = "${each.value}-s3"
}

resource "aws_iam_group_membership" "s3-user-group" {
    users = [for _, user in aws_iam_user.s3-user : user.name]
    group= var.s3-group-name
    name= "${var.s3-group-name}--group-membership"   
}