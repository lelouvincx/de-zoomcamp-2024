# AWS availability zones data

data "aws_availability_zones" "available" {}

# Create the VPC
resource "aws_vpc" "de-zoomcamp-2024-vpc" {
  cidr_block           = var.de_zoomcamp_2024_vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-vpc"
    Environment = var.app_environment
  }
}

# Create the redshift subnet AZ1
resource "aws_subnet" "de-zoomcamp-2024-subnet-az1" {
  vpc_id            = aws_vpc.de-zoomcamp-2024-vpc.id
  cidr_block        = var.de_zoomcamp_2024_vpc_subnet_1_cidr
  availability_zone = data.aws_availability_zones.available.name[0]

  tags = {
    Name        = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-subnet-az1"
    Environment = var.app_environment
  }
}

# Create the redshift subnet AZ2
resource "aws_subnet" "de-zoomcamp-2024-subnet-az2" {
  vpc_id            = aws_vpc.de-zoomcamp-2024-vpc.id
  cidr_block        = var.de_zoomcamp_2024_vpc_subnet_2_cidr
  availability_zone = data.aws_availability_zones.available.name[1]

  tags = {
    Name        = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-subnet-az2"
    Environment = var.app_environment
  }
}

# Create the redshift subnet AZ3
resource "aws_subnet" "de-zoomcamp-2024-subnet-az3" {
  vpc_id            = aws_vpc.de-zoomcamp-2024-vpc.id
  cidr_block        = var.de_zoomcamp_2024_vpc_subnet_3_cidr
  availability_zone = data.aws_availability_zones.available.name[2]

  tags = {
    Name        = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-subnet-az3"
    Environment = var.app_environment
  }
}
