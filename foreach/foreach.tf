resource "aws_instance" "roboshop" {
  for_each               = var.instance_names
  ami                    = var.ami_id
  instance_type          = each.value
  vpc_security_group_ids = local.vpc_security_group_ids
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = var.instance_names
  zone_id  = var.zone_id
  name     = each.key == "web" ? var.domain_name : "${each.key}.${var.domain_name}" #interpolation means combining variables with strings
  type     = "A"
  ttl      = 1
  records  = [each.key == "web" ? aws_instance.roboshop[each.key].public_ip : aws_instance.roboshop[each.key].private_ip]
}

output "web_instance_ip" {
  value = aws_instance.roboshop["web"].public_ip
}