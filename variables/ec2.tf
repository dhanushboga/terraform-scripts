resource "aws_security_group" "allow-sshh" {
  name = "allow-sshh"
  description = "allowing the ssh protocol"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks_egress
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.from_port_ingress
    to_port          = var.to_port_ingress
    protocol         = var.protocol_ingress
    cidr_blocks      = var.cidr_blocks_ingress
    ipv6_cidr_blocks = ["::/0"]
  }

tags = var.sg_tags
}

resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_id
    vpc_security_group_ids = [aws_security_group.allow-sshh.id]
    tags = var.ec2_tags
  
}

