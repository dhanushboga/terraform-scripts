output "ec_info" {
  value = aws_instance.ec2-expense
  
}

output "sg_info" {
  value = aws_security_group.allow-sshh
  
}