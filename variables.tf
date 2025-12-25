variable "vpc_cidr" {
    description = "The CIDR block for the vpc"
    type        = string
}

variable "public_subnets_cidr" {
   description = "A list of public subnets inside the vpc"
   type        = list(string)
}

variable "private_subnets_cidr" {
    description = "A list of private subnets inside the vpc"
    type        = list(string)
}

variable "availability_zones" {
    description = "A list of  availability zones in the region"
    type        = list(string)
}
variable "bastion_sg_name" {
   description = "The name for the bastion security group."
    type            = string
}

variable "bastion_sg_description" {
    description = "The description for the bastion security group. "
    type            =  string
}

variable "frontend_sg_name" {
    description = "The name for the Frontend security group."
    type            =  string
}

variable "frontend_sg_description" {
    description = "The description for the Frontend  security group. "
    type            =  string
}

variable "backend_sg_name" {
   description = "The name for the Backend security group."
    type            = string
}

variable "backend_sg_description" {
    description = "The description for the Backend security group. "
    type            =  string
}

variable "rds_sg_name" {
   description = "The name for the RDS security group."
    type            = string
}

variable "rds_sg_description" {
    description = "The description for the RDS security group. "
    type            =  string
}

variable "alb_sg_name" {
   description = "The name for the ALB security group."
    type            = string
}

variable "alb_sg_description" {
    description = "The description for the ALB security group. "
    type            =  string
}

variable "anywhere"{
   description = "The address of internet"
    type            = list(string)
}
variable "vpc_cidr" {
    description = "The CIDR block for the vpc"
    type            = string
}

variable "public_subnets_cidr" {
   description = "A list of public subnets inside the vpc"
    type            = list(string)
}

variable "private_subnets_cidr" {
    description = "A list of private subnets inside the vpc"
    type            = list(string)
}

variable "availability_zones" {
    description = "A list of  availability zones in the region"
    type            = list(string)
}

variable "bastion_sg_name" {
   description = "The name for the bastion security group."
    type            = string
}

variable "bastion_sg_description" {
    description = "The description for the bastion security group. "
    type            =  string
}

variable "frontend_sg_name" {
    description = "The name for the Frontend security group."
    type            =  string
}

variable "frontend_sg_description" {
    description = "The description for the Frontend  security group. "
    type            =  string
}

variable "backend_sg_name" {
   description = "The name for the Backend security group."
    type            = string
}

variable "backend_sg_description" {
    description = "The description for the Backend security group. "
    type            =  string
}

variable "rds_sg_name" {
   description = "The name for the RDS security group."
    type            = string
}

variable "rds_sg_description" {
    description = "The description for the RDS security group. "
    type            =  string
}

variable "alb_sg_name" {
   description = "The name for the ALB security group."
    type            = string
}

variable "alb_sg_description" {
    description = "The description for the ALB security group. "
    type            =  string
}

variable "anywhere"{
   description = "The address of internet"
    type            = list(string)
}
variable "ami" {
    description = "The AMI to use for the instances"
}

variable "instance_type"  {
    description = "The instance type to use for the instances"
}

variable "instance_count" {
     description = "The number of EC2 instances to be launched"
}

variable "key_name" {
     description  =  "The key pair name to use for SSH access"
}

variable "db_instance_identifier" {
  description = "The name of the RDS instance"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group for the RDS instance"
  type        = string
}

variable "db_instance_class" {
  description = "The instance class of the RDS instance"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
}

variable "username" {
  description = "Master username for the RDS instance"
  type        = string
}

variable "password" {
  description = "Master password for the RDS instance"
  type        = string
}

variable "engine" {
  description = "The database engine (mysql, postgres, etc.)"
  type        = string
}

variable "engine_version" {
  description = "The database engine version"
  type        = string
}

variable "parameter_group_name" {
  description = "The DB parameter group name"
  type        = string
}
variable "alb_name" {
    description = "The name of the ALB."
    type            = string
} 
variable "frontend_target_group_name"{
    description = "The name of the target group for the frontend instances."
    type            = string
} 
