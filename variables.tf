# project name
variable "project-name" {
  description = "The name of the project"
  type        = string
}

# vpc
variable "vpv-cidr" {
  description = "the cidr of vpc"
  type        = string
}

# public subnet 1
variable "public-subnet-1-cidr" {
  description = "the cidr of public subnet 1"
  type        = string
}

# public subnet 2
variable "public-subnet-2-cidr" {
  description = "the cidr of public subnet 2"
  type        = string
}

# private subnet 1
variable "private-subnet-1-cidr" {
  description = "the cidr of public subnet 1"
  type        = string
}

# private subnet 2
variable "private-subnet-2-cidr" {
  description = "the cidr of public subnet 2"
  type        = string
}

# private subnet 3
variable "private-subnet-3-cidr" {
  description = "the cidr of public subnet 3"
  type        = string
}

# private subnet 4
variable "private-subnet-4-cidr" {
  description = "the cidr of public subnet 4"
  type        = string
}

# ssh location
variable "ssh-location" {
  description = "IP Address that can SSH into the EC2 Instance"
  type        = string
}

# database snapshot identifier
variable "database-snapshot-identifier" {
  description = "The Database Snapshot ARN"
  type        = string
}

# database instance type
variable "database-instance-class" {
  description = "The Database Instance Type"
  type        = string
}

# database instance identifier
variable "database-instance-identifier" {
  description = "The Database Instance Identifier"
  type        = string
}

# multi az deployment
variable "multi-az-deployment" {
  description = "Create a Standby DB Instance"
  type        = bool
}
