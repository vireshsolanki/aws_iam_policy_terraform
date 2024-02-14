module "iam-policy" {
    source = "../modules/iam-policy"
    name = var.name
}
module "iam-role" {
    source = "../modules/iam-role"
    name = var.name
    policy-arn = module.iam-policy.policy-arn
}
module "iam-usergroup" {
    source = "../modules/iam-usergroup"
    name = var.name
    policy-arn = module.iam-policy.policy-arn
    role-name = module.iam-role.role-name
    
}
module "group-user" {
    source = "../modules/group-user"
    group-name = module.iam-usergroup.group-name
    usernames = var.usernames
}

   

  