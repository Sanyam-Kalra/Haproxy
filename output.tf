output "private-ip" {
  value = aws_instance.Haproxy_Head.private_ip

}

output "nat" {
  value = aws_nat_gateway.nat.id
}