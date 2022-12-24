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

## Create Internet Gateway and Attach it to VPC
# terraform aws create internet gateway
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${var.project-name}-igw"
  }
}

data "aws_availability_zones" "availability_zones" {}

## Create Public Subnet 1
# terraform aws create subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public-subnet-1-cidr
  availability_zone = data.aws_availability_zones.availability_zones.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public subnet 1"
  }
}

## Create Public Subnet 2
# terraform aws create subnet
resource "aws_subnet" "public-subnet-2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public-subnet-2-cidr
  availability_zone = data.aws_availability_zones.availability_zones.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public subnet 2"
  }
}

## Create Route Table and Add Public Route
# terraform aws create route table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    Name = "Public route table"
  }
}

## Associate Public Subnet 1 to Public Route Table
# terraform aws associate subnet with route table
resource "aws_route_table_association" "public-subnet-1-route-table-association" {
  subnet_id = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}

## Associate Public Subnet 2 to Public Route Table
# terraform aws associate subnet with route table
resource "aws_route_table_association" "public-subnet-2-route-table-association" {
  subnet_id = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-route-table.id
}