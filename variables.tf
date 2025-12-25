variable "region" {
  description = "The AWS region to use for resources."
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets_cidr" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
}

variable "private_subnets_cidr" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones in the region"
  type        = list(string)
}

variable "bastion_sg_name" {
  description = "The name for the bastion security group"
  type        = string
}

variable "bastion_sg_description" {
  description = "The description for the bastion security group"
  type        = string
}

variable "frontend_sg_name" {
  description = "The name for the frontend security group"
  type        = string
}

variable "frontend_sg_description" {
  description = "The description for the frontend security group"
  type        = string
}

variable "backend_sg_name" {
  description = "The name for the backend security group"
  type        = string
}

variable "backend_sg_description" {
  description = "The description for the backend security group"
  type        = string
}

variable "rds_sg_name" {
  description = "The name for the RDS security group"
  type        = string
}

variable "rds_sg_description" {
  description = "The description for the RDS security group"
  type        = string
}

variable "alb_sg_name" {
  description = "The name for the ALB security group"
  type        = string
}

variable "alb_sg_description" {
  description = "The description for the ALB security group"
  type        = string
}

variable "anywhere" {
  description = "CIDR blocks allowed from anywhere"
  type        = list(string)
}

variable "ami" {
  description = "The AMI to use for the instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
}

variable "instance_count" {
  description = "The number of EC2 instances"
  type        = number
}

variable "key_name" {
  description = "The key pair name for SSH access"
  type        = string
}

variable "db_instance_identifier" {
  description = "The name of the RDS instance"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The DB subnet group name"
  type        = string
}

variable "db_instance_class" {
  description = "The RDS instance class"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "username" {
  description = "RDS master username"
  type        = string
}

variable "password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

variable "engine" {
  description = "Database engine"
  type        = string
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
}

variable "parameter_group_name" {
  description = "DB parameter group name"
  type        = string
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "frontend_target_group_name" {
  description = "Frontend target group name"
  type        = string
}
