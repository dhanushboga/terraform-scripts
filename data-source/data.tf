data "aws_ami" "my_ami_id" {
  most_recent      = true
  owners = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

   filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
   name   = "virtualization-type"
   values = ["hvm"]
  }
}

data "aws_vpc" "aws_vpc_id" {
  default = true
}

output "aws_ami_info" {
  value = data.aws_ami.my_ami_id.id
}

output "aws_vpc_info" {
  value = data.aws_vpc.aws_vpc_id.id
}
