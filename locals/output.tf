output "aws_instance_ami_info" {
    value = aws_instance.ec2.ami
  
}

output "aws_security_group_name" {
    value = aws_security_group.allow-sshh.name
  
}

output "vpc_info" {
    value = data.aws_vpc.default.id
}