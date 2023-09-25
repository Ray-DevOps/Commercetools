resource "aws_route53_zone" "primary" {
  name = "commercetools.com"
}


resource "aws_route53_record" "aws" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "aws.commercetools.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]     # this is the elastic IP address that will be assigned to the ALB infront of the EKS cluster
}
