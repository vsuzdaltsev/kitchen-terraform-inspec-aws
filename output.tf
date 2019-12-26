output "instance_public_dns" {
  value = aws_instance.example.public_dns
}

output "instance_id" {
  value = aws_instance.example.id
}
