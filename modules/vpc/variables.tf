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


