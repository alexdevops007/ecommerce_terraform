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
  default = "the cidr of public subnet 1"
  type    = string
}

# public subnet 2
variable "public-subnet-2-cidr" {
  default = "the cidr of public subnet 2"
  type    = string
}

# private subnet 1
variable "private-subnet-1-cidr" {
  default = "the cidr of public subnet 1"
  type    = string
}

# private subnet 2
variable "private-subnet-2-cidr" {
  default = "the cidr of public subnet 2"
  type    = string
}

# private subnet 3
variable "private-subnet-3-cidr" {
  default = "the cidr of public subnet 3"
  type    = string
}

# private subnet 4
variable "private-subnet-4-cidr" {
  default = "the cidr of public subnet 4"
  type    = string
}

# ssh location
variable "ssh-location" {
  default = "IP Address that can SSH into the EC2 Instance"
  type    = string
}