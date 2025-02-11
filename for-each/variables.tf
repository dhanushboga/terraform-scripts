variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    } 
}

variable "domain_name" {
  default = "chenchudaws82s.online"
}

variable "zone_id" {
  default = "Z02994393VNXN8761IE9A"
}