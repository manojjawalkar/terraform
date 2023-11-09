# Terraform Examples on AWS

## This repo has shows some basic examples of how to use Terraform to manage your Infrastructure

1. Deploy_Ec2: This shows how to deploy a single EC2 machine on aws
2. user_data_and_security-group_ec2: Here you can see how to deploy an EC2 instance and create and assign a security group to that instance. This uses `user_data` that will install httpd on our EC2 instance
3. variables: This example shows how to do the same thing using variables.
4. multiple_ec2: This example uses meta-parameter called count. It allows us to scale up/down the resources. Changing the count will add/destroy resources automatically. So count has index values which we can use in tags to differentiate between multiple resources.
