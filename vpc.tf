## Create VPC
# terraform aws create vpc
resource "aws_vpc" "vpc" {
  cidr_block = var.vpv-cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project-name}-vpc"
  }
}
