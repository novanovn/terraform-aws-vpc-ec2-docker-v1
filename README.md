# terraform-aws-vpc-ec2-docker-v1
AWS Terraform script for VPC, Autoscalling &amp; Docker

# how to deploy app with terraform
Terraform instance AWS
1. Create User terraform in AWS Console
2. Before create instances in terraform aws, create AWS Profile in our local OS with  :

  aws configure --profile terraform

  AWS Access Key ID [None]: XXX
  AWS Secret Access Key [None]: XXX
  Default region name [None]: us-east-1
  Default output format [None]: json

3.Generate ssh key

    ssh-keygen -f mykey

4.Initiate terraform

    4.1 terraform init

    4.2 Check terraform resource before apply

    4.3 terraform plan

    4.4 Ready? apply resources

        terraform apply

# Deploy in gitlab

Now, assuming we have ssh connection to our server, and docker, git is installed on our server we can go ahead with the following:

    Make sure you can connect to your server via your ssh-key without requiring password.

    On gitlab, go to your repository > settings > CI/CD > Variables

    Add a new variable SSH_PRIVATE_KEY. The value is your ssh private key (e.g content of ~/.ssh/id_rsa)

    Add a new variable DOCKER_USER, DOCKER_PASSWORD, URL_REGISTRY. The value is about our docker authentication registry.

    Add a new variable IP_SERVER. the value is ip server apps

    Push to gitlab repository

