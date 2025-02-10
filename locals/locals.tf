locals {
  ami_id = data.aws_ami.my_ami_id.id
  instance_type = "t3.micro"
  Name = "${var.project}-${var.component}-${var.environment}"
  vpc_security_group_ids = [aws_security_group.allow-sshh.id]
  name        = "allow-sshh"
  description_name = "this is the security group for ssh"
}