variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    project = "expense"
    environment = "dev"
    Terraform = "true"
    Component = "frontend"
  }
}

variable "zone_name" {
  default = "kalyaneswar.online"
}