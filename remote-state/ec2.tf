resource "aws_instance" "ec2" {
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.allow-sshh.id]
  instance_type          = "t3.micro"

  tags = {
    Name    = "MY EC2 INSTANCE"
    purpose = "this is for practice"
  }
}


resource "aws_security_group" "allow-sshh" {
  name        = "allow-sshh"
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