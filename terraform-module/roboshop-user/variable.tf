variable "tags" {
    default = {
        Environment = "Development"
        Project     = "RoboShop"
        Name        = "roboshop-instance"
    }
}

variable "instance_type" {
    default = "t2.micro"
}