# Terraform for AWS EKS CI/CD Project

provider "aws" {
  region = "ap-south-1"
}

resource "aws_ecr_repository" "app_repo" {
  name = "cloud-devops-app"
}

resource "aws_iam_role" "alb_controller_role" {
  name = "AmazonEKSLoadBalancerControllerRole"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::${var.account_id}:oidc-provider/${var.oidc_provider}"
      },
      "Action": "sts:AssumeRoleWithWebIdentity"
    }
  ]
}
EOF
}

variable "account_id" {}
variable "oidc_provider" {}
variable "account_id" {}
