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
    Component = "app_alb"
  }
}


variable "zone_name" {
  default = "kalyaneswar.online"
}

variable "zone_id" {
  default = "Z072957117A672LL98X43"
}