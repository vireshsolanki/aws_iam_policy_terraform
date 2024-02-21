resource "aws_iam_user" "rds-user" {
    for_each = var.username
    name = "${each.value}-rds"
}
resource "aws_iam_group_membership" "rds-user-group" {
    users =[for _, user in aws_iam_user.rds-user : user.name ]
    group = var.rds-group-name
    name = "${var.rds-group-name}--group-membership"
}