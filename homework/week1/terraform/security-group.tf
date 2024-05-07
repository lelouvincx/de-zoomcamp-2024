# Create a security group for redshift serverless
resource "aws_security_group" "de-zoomcamp-2024-security-group" {
  depends_on = [aws_vpc.de-zoomcamp-2024-vpc]

  name        = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-security-group"
  description = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-security-group"

  vpc_id = aws_vpc.de-zoomcamp-2024-vpc.id

  ingress = {
    description = "Redshift port"
    from_port   = 5439
    to_port     = 5439
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.app_name}-${var.app_environment}-de-zoomcamp-2024-security-group"
    Environment = var.app_environment
  }
}
