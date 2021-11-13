# Declaring variables.

variable "web_ami" {
  type = string
  description = "Declaring variable for the AMI which web hosts use"
}   


variable "aws_region" {
  type = string
  description = "Declarig variable for the region"
}

variable "cidr_vpc" {
  type = string
  description = "Declaring variable for the cidr of custom vpc"
}

variable "cidr_public1" {
  type = string
  description = "Declaring variable for the cidr of the public1 subnet"
}

variable "cidr_public2" {
  type = string
  description = "Declaring variable for the cidr of the public2 subnet"     
}

variable "cidr_web" {
  type = string
  description = "Declaring variable for the cidr of the web private subnet"
}



