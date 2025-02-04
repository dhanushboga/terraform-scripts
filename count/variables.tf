variable "instances" {
   default = ["mysql","backend","frontend"]
}

variable "aws_zone_id" {
  default = "Z06400962UCIIQTJ9SFUO"
}

variable "domain_name" {
  default = "chenchudaws82s.online"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
    }
}