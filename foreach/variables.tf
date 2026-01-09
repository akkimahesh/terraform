variable "ami_id" {
  type    = string
  default = "ami-00116e193ac083f46"
}

variable "instance_names" {
  type = map(any)
  default = {
    "redis"     = "t2.micro"
    "cart"      = "t2.micro"
    "catalogue" = "t2.micro"
    "user"      = "t2.micro"
    "payment"   = "t2.micro"
    "shipping"  = "t3.small"
    "mysql"     = "t3.small"
    "mongodb"   = "t3.small"
    "web"       = "t2.micro"
    "dispatch"  = "t2.micro"
    "rabbitmq"  = "t2.micro"

  }
}


variable "cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

variable "cidr_block_for_egress" {
  type    = string
  default = "0.0.0.0/0"
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "zone_id" {
  type    = string
  default = "Z0645412DUI1FI74RJCD"
}

variable "domain_name" {
  type    = string
  default = "maheshakki.shop"
}