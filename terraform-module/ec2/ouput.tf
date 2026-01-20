output "public_ip" {
    value = aws_instance.roboshop.public_ip
}

output "instance_id" {
    value = aws_instance.roboshop.id
}

output "private_ip" {
    value = aws_instance.roboshop.private_ip
}