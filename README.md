
---

# IAM Policy for EC2 Group

This project focuses on creating an IAM policy for an EC2 group that restricts the creation of EC2 instances to a specific type or region using Terraform.

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Prerequisites](#prerequisites)
4. [Usage](#usage)
5. [Modules](#modules)
6. [Variables](#variables)
7. [Contributing](#contributing)

## Introduction

In many AWS environments, it's crucial to have fine-grained control over resource creation permissions. This project demonstrates how to create an IAM policy that limits the EC2 instance creation capabilities of a group to a specific instance type or region. This enhances security by ensuring resources are only provisioned where and how they are intended.

## Features

- Creates an IAM policy that restricts EC2 instance creation based on specified criteria.
- Utilizes Terraform to manage infrastructure as code.
- Promotes security best practices by enforcing resource creation restrictions.

## Prerequisites

Before using this project, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS credentials configured on your system.
- Basic understanding of IAM policies and Terraform.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone --single-branch --branch ec2-policy https://github.com/vireshsolanki/aws_iam_policy_terraform.git
   ```

2. Navigate to the project directory:

   ```bash
   cd policy-creator
   ```

3. Initialize the Terraform configuration:

   ```bash
   terraform init
   ```

4. Customize the `terraform.tfvars` file to specify the desired region,name,instance type and number of user you want to add in it. Add new users under the usernames , it won't effect the existing user you created with terraform.
   ``` bash
      name = "ec2"
      region = "ap-southeast-1"
      instance-type= "t2.micro"
      usernames = {
        user1 = "vpd"
        user2= "gpc"
      }

    ```
6. Review the Terraform configuration files to ensure they meet your requirements.

7. Apply the changes to create the IAM policy:

   ```bash
   terraform apply
   ```

## Modules

This project consists of the following modules:

1. `iam-usergroup`: Creates an IAM user group.
2. `iam-policy`: Defines the IAM policy with restrictions on EC2 instance creation.
3. `iam-role`: It is for creating policy attached to role (optional).
4. `group-usr`: Defines the user included in our group.

## Variables

The project uses the following variables, which can be customized in the `terraform.tfvars` file:

- `instance-type`: The allowed EC2 instance type.
- `region`: The allowed AWS region for EC2 instance creation.
- `usernames` : It allows to add user with mapping values.
## Contributing

Contributions to this project are welcome. Feel free to submit issues, feature requests, or pull requests.
