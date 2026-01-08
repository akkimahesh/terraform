resource "aws_security_group" "roboshop_sg" {
  name = "roboshop_sg"
  #description = "Allow TLS inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.default.id

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # semantically equivalent to all ports
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop_sg"
  }
}

output "sg_id" {
  value = aws_security_group.roboshop_sg.id
}


