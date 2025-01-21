output "instance_public_ip" {
  value = aws_instance.microservice.public_ip
}

output "instance_id" {
  value = aws_instance.microservice.id
}