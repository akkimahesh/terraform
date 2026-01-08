resource "aws_security_group" "roboshop_sg" {
  name = "roboshop_sg"
  #description = "Allow TLS inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.default.id

  tags = {
    Name = "roboshop_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_all" {
  security_group_id = aws_security_group.roboshop_sg.id
  cidr_ipv4         = var.cidr_block
  from_port         = var.from_port
  ip_protocol       = "tcp"
  to_port           = var.to_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.roboshop_sg.id
  cidr_ipv4         = var.cidr_block_for_egress
  ip_protocol       = "-1" # semantically equivalent to all ports
}
