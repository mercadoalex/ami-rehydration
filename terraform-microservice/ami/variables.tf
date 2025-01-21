variable "source_instance_id" {
  description = "The ID of the EC2 instance to create an AMI from"
  type        = string
}

variable "ami_name" {
  description = "The name of the AMI"
  type        = string
  default     = "my-ami"
}

variable "ami_description" {
  description = "A description for the AMI"
  type        = string
  default     = "AMI created from EC2 instance"
}

variable "tags" {
  description = "Tags to apply to the AMI"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "The AWS region to create the AMI in"
  type        = string
  default     = "us-west-1"
}