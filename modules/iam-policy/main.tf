resource "aws_iam_policy" "rds-policy" {
  name        = "${var.name}-access-policy"
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "rds:RestoreDBClusterFromSnapshot",
                "rds:DescribeDBClusterAutomatedBackups",
                "rds:AddRoleToDBInstance",
                "rds:CreateDBInstance",
                "rds:DescribeDBInstances",
                "rds:ModifyDBInstance",
                "rds:DescribeDBParameters",
                "rds:AddTagsToResource",
                "rds:DescribeDBSnapshots",
                "rds:CopyDBSnapshot",
                "rds:CopyDBClusterSnapshot",
                "rds:DescribeDBLogFiles",
                "rds:DeleteDBInstanceAutomatedBackup",
                "rds:StopDBInstance",
                "rds:DeleteDBClusterAutomatedBackup",
                "rds:StartDBInstance",
                "rds:RebootDBCluster",
                "rds:ModifyDBSnapshot",
                "rds:ListTagsForResource",
                "rds:CreateDBSnapshot",
                "rds:RestoreDBInstanceFromDBSnapshot",
                "rds:RebootDBInstance",
                "rds:DescribeDBClusterSnapshots",
                "rds:ModifyDBCluster",
                "rds:CreateDBClusterSnapshot",
                "rds:DescribeDBClusterEndpoints",
                "rds:DescribeDBClusters"
            ],
            "Resource": "*"
        }
    ]
})
}