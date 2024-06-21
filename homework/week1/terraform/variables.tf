# AWS connection & authentication

variable "aws_access_key" {
  type        = string
  description = "AWS access key"
  default     = ""
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
  default     = ""
}

variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

# Application definition

variable "app_name" {
  type        = string
  description = "Application name"
}

variable "app_environment" {
  type        = string
  description = "Application environment"
}

# Networks

variable "de_zoomcamp_2024_vpc_cidr" {
  type        = string
  description = "VPC IPv4 CIDR"
}

variable "de_zoomcamp_2024_vpc_subnet_1_cidr" {
  type        = string
  description = "IPv4 CIDR for Redshift subnet 1"
}

variable "de_zoomcamp_2024_vpc_subnet_2_cidr" {
  type        = string
  description = "IPv4 CIDR for Redshift subnet 2"
}

variable "de_zoomcamp_2024_vpc_subnet_3_cidr" {
  type        = string
  description = "IPv4 CIDR for Redshift subnet 3"
}

# Redshift serverless

variable "redshift_serverless_namespace_name" {
  type        = string
  description = "Redshift serverless namespace name"
}

variable "redshift_serverless_database_name" {
  type        = string
  description = "Redshift serverless database name"
}

variable "redshift_serverless_admin_username" {
  type        = string
  description = "Redshift serverless admin username"
}

variable "redshift_serverless_admin_password" {
  type        = string
  description = "Redshift serverless admin password"
}

variable "redshift_serverless_workgroup_name" {
  type        = string
  description = "Redshift serverless workgroup name"
}

variable "redshift_serverless_base_capacity" {
  type        = number
  description = "Redshift serverless base capacity"
  default     = 32 // 32 RPUs to 12 RPUs in unit of 8 (32, 40, 48, ...)
}

variable "redshift_serverless_publicly_accessible" {
  type        = string
  description = "Set the redshift serverless to be publicly accessible"
}
