locals {
  Name    = "${var.project}-${var.component}-${var.environment}"
  vpc_security_group_ids = [aws_security_group.allow-sshh.id]
  instance_type          = var.ins_type
  ami                    = var.ami_id
  name        = var.sg_name
}