locals {
  ami_id = data.aws_ami.my_ami_id.id
  instance_type = "t3.micro"
  Name = "${var.project}-${var.component}-${var.environment}"
}