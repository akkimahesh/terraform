resource "aws_instance" "roboshop" {
    ami           = data.aws_ami.centos8.id
    instance_type = lookup(var.instance_type, terraform.workspace)
    tags = {
        Name = "roboshop-instance"
    }
}

#maintain two statefiles for dev and prod environment in remote backend s3 bucket otherwise both env will override each other

# output "ami_info" {
#     value = data.aws_ami.centos8.id
# }

# output "ami_info1" {
#     value = data.aws_ami.amazon_linux_2.id
# }