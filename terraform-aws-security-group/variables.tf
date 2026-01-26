variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "project_name" {
  
}

variable "common_tags" {
  
}

variable "environment" {
  
}

variable "sg_tags" {
  
}

variable "sg_ingress_rules" {
  type = list
  default = []
}