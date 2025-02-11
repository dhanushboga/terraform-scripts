data "aws_ec2_instance_type" "aws_instance_type" {
  instance_type = "t3.micro"
  
}

output "aws_ins_type_info"{
    value = data.aws_ec2_instance_type.aws_instance_type.instance_type
}