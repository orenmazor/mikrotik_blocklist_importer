resource "mikrotik_dns_record" "record" {
  for_each = toset(split("\n", file("urls_to_block")))

  name    = each.value
  address = "0.0.0.0"
  ttl     = 300
}
