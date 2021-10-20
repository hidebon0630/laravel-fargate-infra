resource "aws_route53_zone" "example" {
  name = "g0pf.com"
}

resource "aws_route53_record" "root_a" {
  count = var.enable_alb ? 1 : 0

  name    = aws_route53_zone.example.name
  type    = "A"
  zone_id = aws_route53_zone.example.zone_id

  alias {
    evaluate_target_health = true
    name                   = aws_lb.this[0].dns_name
    zone_id                = aws_lb.this[0].zone_id
  }
}
