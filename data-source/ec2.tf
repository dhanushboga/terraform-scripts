resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.my_ami_id.id
  vpc_security_group_ids = local.vpc_security_group_ids
  instance_type          = local.instance_type
  tags = var.tags_name
}


resource "aws_security_group" "allow-sshh" {
  name        = var.sg_name
  description = "this is the security group for ssh"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.sg_cidr_block
    ipv6_cidr_blocks = var.sg_ipv6
  }
  tags = var.sg_tags_name

}