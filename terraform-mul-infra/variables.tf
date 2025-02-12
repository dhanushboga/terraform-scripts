variable "instances" {
   default =  ["mysql","backend","frontend"]
}

variable "project" {
  default = "expense"
}

variable "environment" {
  
}
variable "aws_zone_id" {
  default = "Z02994393VNXN8761IE9A"
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