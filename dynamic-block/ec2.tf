resource "aws_instance" "ec2" {
  ami                    = local.ami
  vpc_security_group_ids = local.vpc_security_group_ids
  instance_type          = local.instance_type
  tags = local.ec2_tags
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

  dynamic "ingress" {  #terraform will give you the key word with block name
    for_each = var.ingress_ports
    content {
      from_port = ingress.value["from_port"]
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
    }
  tags = local.sg_tags
}
