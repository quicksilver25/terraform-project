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
  sensitive   = true
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

variable "private_subnet_ids" {
  description = "Private subnet IDs for DB subnet group"
  type        = list(string)
}

variable "rds_sg_id" {
  description = "Security group ID for the RDS instance"
  type        = string
}

