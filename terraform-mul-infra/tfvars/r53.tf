resource "aws_route53_record" "expense" {
  count = length(var.instances)
  allow_overwrite = true
  zone_id = var.aws_zone_id
  name    = var.instances[count.index] == "frontend" && var.environment == "prod" ? var.domain_name : "${var.instances[count.index]}-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = [var.instances[count.index] == "frontend" && var.environment == "prod" ? aws_instance.ec2-expense[count.index].public_ip : aws_instance.ec2-expense[count.index].private_ip]
}


# resource "aws_route53_record" "frontend" {
#   allow_overwrite = true
#   zone_id = var.aws_zone_id
#   name    = "${var.domain_name}"
#   type    = "A"
#   ttl     = "1"
#   records = [aws_instance.ec2-expense[2].public_ip]
# }