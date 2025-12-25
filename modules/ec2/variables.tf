variable "instance_type" {
  description = "The instance type to use for the instances"
  type        = string
}

variable "instance_count" {
  description = "The number of EC2 instances to be launched"
  type        = number
}

variable "key_name" {
  description = "The key pair name to use for SSH access"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones"
  type        = list(string)
}

variable "frontend_sg_id" {
  description = "The security group ID for the frontend instances"
  type        = string
}

variable "backend_sg_id" {
  description = "The security group ID for the backend instances"
  type        = string
}

variable "bastion_public_subnet_id" {
  description = "Public subnet ID for the bastion host"
  type        = string
}

variable "bastion_sg_id" {
  description = "The security group ID for the bastion host"
  type        = string
}

