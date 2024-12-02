resource "aws_instance" "linux" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = "Linux-key"

tags = {
    Name = "Linux"
} 
}

