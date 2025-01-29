variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is RED hat ami"
}

variable "instance_id" {
    type = string
    default = "t3.micro"
    description = "This is Intance ID"
}

variable "from_port_ingress" {
    type = number
    default = 22
    description = "This is ingress from port"
}

variable "to_port_ingress" {
    type = number
    default = 22
    description = "This is ingress to port"
}

variable "protocol_ingress" {
    type = string
    default = "tcp"
    description = "This is ingress to port"
}

variable "cidr_blocks_ingress" {
    type = list(string)
    default = ["0.0.0.0/0"]
    description = "cidr_blocks_ingress for security group"
}

variable "cidr_blocks_egress" {
    type = list(string)
    default = ["0.0.0.0/0"]
    description = "cidr_blocks_egress for security group"
}

variable "sg_tags" {
    type = map
    default = {
        Name = "Allow-sshh"
    }
  
}

variable "ec2_tags" {
    default = {
        Name = "terraform ec2 instance"
    }
  
}

/* 
1. command line --> -var "<var-name>=<var-value>"
2. tfvars
3. env var
4. default values
5. user prompt */