resource "aws_instance" "roboshop" {
    ami           = data.aws_ami.centos8.id
    instance_type = "t3.small"
    security_groups = [aws_security_group.roboshop_sg.name]
    tags = {
        Name = "roboshop-instance"
    }
}

output "ami_info" {
    value = data.aws_ami.centos8.id
}

output "public_ip" {
    value = aws_instance.roboshop.public_ip
}