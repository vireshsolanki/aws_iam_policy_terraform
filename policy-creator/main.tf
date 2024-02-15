module "iam-policy" {
    source = "../modules/iam-policy"
    region = var.region
    name = var.name
}
module "iam-role"{
    source = "../modules/iam-roles"
    name = var.name
    s3-policy-arn = module.iam-policy.s3-policy-arn
    
}
module "iam-group" {
    source = "../modules/iam-group"
    name = var.name
    s3-policy-arn = module.iam-policy.s3-policy-arn
    }
module "iam-group-user" {
    source = "../modules/iam-group-user"
    username = var.username
    s3-group-name = module.iam-group.s3-group-name
  
}
  