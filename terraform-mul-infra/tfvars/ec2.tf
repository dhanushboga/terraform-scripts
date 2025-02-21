resource "aws_instance" "ec2-expense" {
  count = length(var.instances) #it will create three instances
  #count = 3
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.allow-sshh.id]
  instance_type          = "t3.micro"

  # tags = {
  #   Name    = var.instances[count.index]
  #   purpose = "this is for practice"
  # }
  tags = merge(var.common_tags,
  {
    Name = "${var.project}-${var.environment}-${var.instances[count.index]}"

  }
  )
  

}


resource "aws_security_group" "allow-sshh" {
  name        = "${var.project}-${var.environment}" #expense-dev #expense-prod
  description = "this is the security group for ssh"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name        = "${var.project}-${var.environment}"
    description = "test description"
  }

}