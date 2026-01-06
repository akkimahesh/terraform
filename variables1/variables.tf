variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Environment = "Development"
        Project     = "RoboShop"
        Name        = "roboshop-instance"
    }
}

variable "cidr_block" {
    type = string
    default = "0.0.0.0/0"
}

variable "cidr_block_for_egress" {
    type = string
    default = "0.0.0.0/0"
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}
