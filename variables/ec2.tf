resource "aws_instance" "ec2" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow-sshh.id]
    instance_type = var.aws_ins_type
    tags = var.tag_name_ec2
}


resource "aws_security_group" "allow-sshh" {
  name = "allow-sshh"
  description = "this is the security group for ssh"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.in_sg_from
    to_port          = var.in_sg_to
    protocol         = var.sg_in_protocol
    cidr_blocks      = var.sg_in_cidr_block
    ipv6_cidr_blocks = var.sg_in_ipv6
  }
  tags = var.tag_name_sg
  
  
}