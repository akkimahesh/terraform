resource "aws_instance" "roboshop" {
    count = 9
    ami           = var.ami_id
    instance_type = var.instance_names[count.index] == "mongodb" ? "t3.large" : "t3.small"
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    tags = {
        Name = var.instance_names[count.index]
    }
}

