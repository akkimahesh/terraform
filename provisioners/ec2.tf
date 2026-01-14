resource "aws_instance" "roboshop" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
  tags = {
    Name = "roboshop-instance"
  }

  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }

  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "echo Hello, World! > /home/centos/hello.txt"
    ]
  }

  provisioner "file" {
    source      = "provisioners/"
    destination = "/home/centos/terraform"

  }
}
