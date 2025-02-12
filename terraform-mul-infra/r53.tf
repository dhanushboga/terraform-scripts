# resource "aws_route53_record" "expense" {
#   allow_overwrite = true
#   count = 2
#   zone_id = var.aws_zone_id
#   name    = "${var.instances[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = "1"
#   records = [aws_instance.ec2-expense[count.index].private_ip]
# }

# resource "aws_route53_record" "frontend" {
#   allow_overwrite = true
#   zone_id = var.aws_zone_id
#   name    = "${var.domain_name}"
#   type    = "A"
#   ttl     = "1"
#   records = [aws_instance.ec2-expense[2].public_ip]
# }