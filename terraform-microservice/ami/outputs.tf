output "ami_id" {
  description = "The ID of the newly created AMI"
  value       = aws_ami_from_instance.example.id
}

output "ami_name" {
  description = "The name of the newly created AMI"
  value       = aws_ami_from_instance.example.name
}

output "ami_description" {
  description = "The description of the newly created AMI"
  value       = aws_ami_from_instance.example.description
}