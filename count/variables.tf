variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_names" {
    type = list
    default = ["mongodb" , "redis" , "rabbitmq", "catalogue" , "user" , "cart" , "shipping" , "payment" , "web" , "mysql", "dispatch"]
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
