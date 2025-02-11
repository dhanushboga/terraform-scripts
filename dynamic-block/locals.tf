locals {
  instance_type          = data.aws_ec2_instance_type.aws_instance_type.instance_type
  vpc_security_group_ids = [aws_security_group.allow-sshh.id]
  sg_tags = var.sg_name
  ec2_tags = var.ec2_name
  ami    = var.ami_id
  name        = "allow-sshh"
}