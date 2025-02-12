variable "instances" {
   default =  ["mysql","backend","frontend"]
}

variable "project" {
  default = "expense"
}

variable "environment" {
  
}
variable "aws_zone_id" {
  default = "Z00348971UIDPAL0V2OR2"
}

variable "domain_name" {
  default = "chenchudaws82s.online"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        
    }
}