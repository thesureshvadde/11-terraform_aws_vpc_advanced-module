variable "vpc_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
}

variable "project_name" {
  type = string
}

variable "common_tags" {
  type = map
  default = {}
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "please give only 2 cidr blocks"
  }
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please give only 2 cidr blocks"
  }
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "please give only 2 cidr blocks"
  }
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "requestor_vpc_id" {
  type = string
  default = ""
}

variable "default_route_id" {
  type = string
  default = ""
}

variable "default_vpc_cidr" {
  type = string
  default = ""
}