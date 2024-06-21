output "de_zoomcamp_2024_vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.de-zoomcamp-2024-vpc.id
}

output "de_zoomcamp_2024_vpc_cidr" {
  description = "The CIDR of the VPC"
  value       = var.de_zoomcamp_2024_vpc_cidr
}

output "de_zoomcamp_2024_subnet_az1_id" {
  description = "The ID of subnet in AZ1"
  value       = aws_subnet.de-zoomcamp-2024-subnet-az1.id
}

output "de_zoomcamp_2024_subnet_az2_id" {
  description = "The ID of subnet in AZ2"
  value       = aws_subnet.de-zoomcamp-2024-subnet-az2.id
}

output "de_zoomcamp_2024_subnet_az3_id" {
  description = "The ID of subnet in AZ3"
  value       = aws_subnet.de-zoomcamp-2024-subnet-az3.id
}

output "de_zoomcamp_2024_subnet_az1_cidr" {
  description = "The CIDR of subnet in AZ1"
  value       = var.de_zoomcamp_2024_vpc_subnet_1_cidr
}

output "de_zoomcamp_2024_subnet_az2_cidr" {
  description = "The CIDR of subnet in AZ2"
  value       = var.de_zoomcamp_2024_vpc_subnet_2_cidr
}

output "de_zoomcamp_2024_subnet_az3_cidr" {
  description = "The CIDR of subnet in AZ3"
  value       = var.de_zoomcamp_2024_vpc_subnet_3_cidr
}

output "redshift_serverless_namespace_id" {
  description = "Redshift serverless namespace ID"
  value       = aws_redshiftserverless_namespace.serverless.namespace_id
}

output "redshift_serverless_namespace_arn" {
  description = "Redshift serverless namespace ARN"
  value       = aws_redshiftserverless_namespace.serverless.arn
}
