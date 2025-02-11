variable "ingress_ports" {
    type = list
    default = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 8080
            to_port = 8080
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 3306
            to_port = 3306
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 80
            to_port = 80
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 443
            to_port = 443
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
  
}

variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}


variable "sg_name" {
  default = {
    name        = "allow-sshh"
    description = "test description" 
  }
}

variable "ec2_name" {
  default = {
    Name    = "MY EC2 INSTANCE"
    purpose = "this is for practice"
  }
}