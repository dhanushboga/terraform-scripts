resource "aws_instance" "ec2" {
  ami                    = local.ami
  vpc_security_group_ids = local.vpc_security_group_ids
  instance_type          = local.instance_type

  tags = {
    Name    = local.Name
    purpose = "this is for practice"
  }
}


resource "aws_security_group" "allow-sshh" {
  name        = local.name
  description = "this is the security group for ssh"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name        = "allow-sshh"
    description = "test description"
  }

}