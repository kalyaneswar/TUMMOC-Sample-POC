### Project variables ###
variable "project_name" {
    type = string
 
}   

variable "environment" {
    type = string
    default = "dev"
  
}

variable "common_tags" {
    type = map

  
}
### VPC ###

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "vpc_tags" {
    type = map
    default = {}
  
}

### InterntGateWay Tags ###
variable "igw_tags" {
    type = map
    default = {}
  
}


### Public Subnets ###
variable "public_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "Please provide 2 valid public subnets CIDR"
    }
  
}

variable "public_subnet_cidrs_tags" {
    type = map
    default = {}
  
}

### Private Subnets ###
variable "private_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "Please provide 2 valid private subnets CIDR"
    }
  
}

variable "private_subnet_cidrs_tags" {
    type = map
    default = {}
  
}

### DataBase Subnets ###
variable "database_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "Please provide 2 valid database subnets CIDR"
    }
  
}

variable "database_subnet_cidrs_tags" {
    type = map
    default = {}
  
}
variable "database_subnet_group_tags" {
    type = map
    default = {}
  
}

### NAT Gateway Tags
variable "nat_gateway_tags" {
    type = map
    default = {}
  
}

### Public Route Table Tags
variable "public_route_table_tags" {
    type = map
    default = {}
  
}

### Private Route Table Tags
variable "private_route_table_tags" {
    type = map
    default = {}
  
}

### Database Route Table Tags ###
variable "database_route_table_tags" {
    type = map
    default = {}
  
}

### Peering ###
variable "is_peering_required" {
    type = bool
    default = false
  
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
  
}

variable "vpc_peering_tags" {
    type = map
    default = {}
  
}