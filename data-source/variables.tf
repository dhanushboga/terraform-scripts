
variable "tags_name" {
  default = {
    Name = "MY EC2 INSTANCE"
    purpose = "this is for practice"
  }
}

variable "sg_tags_name" {
    default = {
        name        = "allow-sshh"
        description = "this is security group description"
    }
}

variable "sg_from_port" {
    type = number
    default = 22
}

variable "sg_to_port" {
    type = number
  default = 22
}
variable "sg_protocol" {
    type = string
  default = "tcp"
}
variable "sg_cidr_block" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_ipv6" {
    type = list(string)
    default = ["::/0"]
}

variable "sg_name" {
  default = "allow-sshh"
}



