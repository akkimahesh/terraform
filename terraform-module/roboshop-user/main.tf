module "roboshop_user" {
  source = "../ec2"
  instance_type = var.instance_type
  tags = var.tags
}

