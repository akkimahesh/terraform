resource "aws_instance" "roboshop" {
    ami           = data.aws_ami.centos8.id
    instance_type = "t2.micro"
    tags = {
        Name = "roboshop-instance"
    }
}

output "ami_info" {
    value = data.aws_ami.centos8.id
}

output "ami_info1" {
    value = data.aws_ami.amazon_linux_2.id
}