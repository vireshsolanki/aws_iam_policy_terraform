module "iam-policy" {
    source = "../modules/iam-policy"
    name = var.name
}
module "iam-roles" {
    source = "../modules/iam-roles"
    name = var.name
    rds-policy-arn = module.iam-policy.rds-policy-arn
}
module "user-group" {
    source = "../modules/iam-usergroup"
    name = var.name
    rds-policy-arn = module.iam-policy.rds-policy-arn
}
module "user" {
    source = "../modules/iam-user"
    name = var.name
    username = var.username
    rds-group-name = module.user-group.rds-group-name    

  
}