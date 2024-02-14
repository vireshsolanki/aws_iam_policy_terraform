resource "aws_iam_policy" "ec2-access" {
    name   = "${var.name}-policy"
    policy = jsonencode({
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "VPC",
			"Effect": "Allow",
			"Action": [
				"ec2:DescribeVpcs",
				"ec2:DescribeSubnets"
			],
			"Resource": "*",
			"Condition": {
				"StringEquals": {
					"aws:RequestedRegion": "ap-southeast-1"
				}
			}
		},
		{
			"Sid": "EC2",
			"Effect": "Allow",
			"Action": [
				"ec2:AuthorizeSecurityGroupEgress",
				"ec2:AuthorizeSecurityGroupIngress",
				"ec2:DescribeInstances",
				"ec2:TerminateInstances",
				"ec2:CreateKeyPair",
				"ec2:CreateTags",
				"ec2:RunInstances",
				"ec2:ModifySecurityGroupRules",
				"ec2:StopInstances",
				"ec2:RevokeSecurityGroupIngress",
				"ec2:DescribeImages",
				"ec2:StartInstances",
				"ec2:CreateSecurityGroup",
				"ec2:RevokeSecurityGroupEgress",
				"ec2:DeleteSecurityGroup",
				"ec2:DescribeInstanceTypes",
				"ec2:DescribeKeyPairs",
				"ec2:DescribeInstanceStatus"
			],
			"Resource": "*",
			"Condition": {
				"StringEquals": {
					"aws:RequestedRegion": "ap-southeast-1"
				}
			}
		},
		{
			"Sid": "SG",
			"Effect": "Allow",
			"Action": "ec2:DescribeSecurityGroups",
			"Resource": "*",
			"Condition": {
				"StringEquals": {
					"aws:RequestedRegion": "ap-southeast-1"
				}
			}
		},
		{
			"Sid": "T2micro",
			"Effect": "Deny",
			"Action": "ec2:RunInstances",
			"Resource": "*",
			"Condition": {
				"ForAnyValue:StringNotEquals": {
					"ec2:InstanceType": "t2.micro"
				}
			}
		}
	]
})
}

