resource "aws_instance" "roboshop" {
    ami           = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    tags = var.tags
}

