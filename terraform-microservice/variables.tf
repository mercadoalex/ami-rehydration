variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-west-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0f00603d25980b321"
  # aws ec2 describe-images --region us-west-1 --owners 099720109477 --filters "Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*" --query "Images[*].[ImageId,CreationDate]" --output text | sort -k2 -r | head -n1
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
  default     = "the_damm_keys"
}

variable "source_instance_id" {
  description = "The ID of the EC2 instance to create an AMI from"
  type        = string
  default     = "la instance de Alex"
  #default     = "i-0123456789abcdef0"  # Example EC2 instance ID
}

variable "ami_name" {
  description = "The name of the AMI"
  type        = string
  #default     = "my-ami"
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
  default     = { hydration = "true" }
}

variable "security_group_ids" {
  description = "The security group IDs to associate with the EC2 instance"
  type        = list(string)
  default     = ["sg-0123456789abcdef0"] # Example security group ID
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-0123456789abcdef0" # Replace with your VPC ID
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
  default     = "subnet-0123456789abcdef0" # Replace with your subnet ID
}