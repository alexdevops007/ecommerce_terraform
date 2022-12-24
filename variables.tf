# project name
variable "project-name" {
  description = "The name of the project"
  type = string
}

# vpc
variable "vpv-cidr" {
  description = "the cidr of vpc"
  type = string
}

# public subnet 1
variable "public-subnet-1-cidr" {
  default = "the cidr of public subnet 1"
  type = string
}

# public subnet 2
variable "public-subnet-2-cidr" {
  default = "the cidr of public subnet 2"
  type = string
}