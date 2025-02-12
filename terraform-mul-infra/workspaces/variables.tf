variable "aws_instance_type" {
  default = {
    dev = "t3.micro"
    prod = "t3.small"
  }
}