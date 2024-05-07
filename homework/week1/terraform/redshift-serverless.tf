# Create the redshift serverless namespace
resource "aws_redshiftserverless_namespace" "serverless" {
  namespace_name      = var.redshift_serverless_namespace_name
  db_name             = var.redshift_serverless_database_name
  admin_username      = var.redshift_serverless_admin_username
  admin_user_password = var.redshift_serverless_admin_password
  iam_roles           = [aws_iam_role.redshift-serverless-role.arn]

  tags = {
    Name        = var.redshift_serverless_namespace_name
    Environment = var.app_environment
  }
}

# Create the redshift serverless workgroup
resource "aws_redshiftserverless_workgroup" "serverless" {
  depends_on = [aws_redshiftserverless_namespace.serverless]

  namespace_name = aws_redshiftserverless_namespace.serverless.id
  workgroup_name = var.redshift_serverless_workgroup_name
  base_capacity  = var.redshift_serverless_base_capacity

  security_group_ids  = [aws_security_group.de-zoomcamp-2024-security-group.id]
  subnet_ids          = [aws_subnet.de-zoomcamp-2024-subnet-az1, aws_subnet.de-zoomcamp-2024-subnet-az2, aws_subnet.de-zoomcamp-2024-subnet-az3]
  publicly_accessible = var.redshift_serverless_publicly_accessible

  tags = {
    Name        = var.redshift_serverless_workgroup_name
    Environment = var.app_environment
  }
}
