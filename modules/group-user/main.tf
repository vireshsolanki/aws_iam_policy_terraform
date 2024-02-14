resource "aws_iam_user" "ec2-user" {
for_each = var.usernames
name = "${each.value}-ec2" 
}

resource "aws_iam_group_membership" "group-membership" {

  name  = "${var.group-name}-group-membership"
  users = [for _, user in aws_iam_user.ec2-user : user.name]
  group = var.group-name
}
