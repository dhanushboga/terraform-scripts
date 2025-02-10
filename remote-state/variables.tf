variable "environment" {
    default = "dev"
  
}

variable "project" {
  default = "expense"
}

variable "component" {
  default = "backend"
}

variable "ins_type" {
  default = "t3.micro"
}

variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "sg_name" {
  default = "allow-sshh"
}