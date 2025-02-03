variable "ami_id" {
    type = string
  default = "ami-09c813fb71547fc4f"
}

variable "aws_ins_type" {
    type = string
  default = "t3.micro"
}


variable "in_sg_from" {
    type = number
  default = 22
}

variable "in_sg_to" {
    type = number
    default = 22
}

variable "sg_in_protocol" {
    type = string
    default = "tcp"
}

variable "sg_in_cidr_block" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}

variable "sg_in_ipv6" {
    type = list(string)
    default = ["::/0"]
  
}

variable "tag_name_sg" {
    default = {
        name = "allow-sshh"
        description = "test description"
    }
}

variable "tag_name_ec2" {
    default = {
        Name = "MY EC2 INSTANCE"
        purpose = "this is for practice"
    }
  
}

