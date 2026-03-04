output "subnet_list" {
  value = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
}