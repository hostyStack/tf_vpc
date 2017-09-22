variable "name" {
  description = "The name of the VPC."
}

variable "region" {
  description = "The AWS region."
}

variable "environment" {
  description = "The name of our environment, i.e. development."
}

variable "vpc_cidr" {
  description = "The CIDR of the VPC."
}

variable "public_subnet" {
  description = "The list of public subnets to populate."
}

variable "private_subnets" {
  description = "The list of private subnets to populate."
}

variable "enable_dns_hostnames" {
  description = "Should"
  default = true
}

variable "enable_dns_support" {
  description = "Should"
  default = true
}

output "public_subnet_id" {
  value = "${aws_subnet.public.id}"
}

output "vpc_id" {
  value = "${aws_vpc.tfb.id}"
}

output "cidr" {
  value = "${aws_vpc.tfb.cidr_block}"
}
