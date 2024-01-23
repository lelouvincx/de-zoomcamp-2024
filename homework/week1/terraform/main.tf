terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}


# resource "aws_iam_role" "example_role" {
#   name = "examplerole"
# 
#   assume_role_policy = <<EOF
#   {
#     "Version": "2012-10-17",
#     "Statement": [
#       {
#         "Effect": "Allow",
#         "Principal": {
#           "Service": "ec2.amazonaws.com"
#         },
#         "Action": "sts:AssumeRole"
#       }
#     ]
#   }
#   EOF
# }
# 
# 
# resource "aws_iam_role_policy_attachment" "example_attachment" {
#   role = aws_iam_role.example_role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
# }
# 
# 
# resource "aws_iam_instance_profile" "example_profile" {
#   name = "example_profile"
#   role = aws_iam_role.example_role.name
# }
# 
# 
# resource "aws_instance" "example_instance" {
#   ami = "ami-06ca3ca175f37dd66"
#   instance_type = "t2.micro"
# 
#   iam_instance_profile = aws_iam_instance_profile.example_profile.name
# 
#   tags = {
#       Name = "example_instance"
#     }
# }
