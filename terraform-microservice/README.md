# Terraform Microservice

This project sets up a simple microservice on an EC2 instance using Terraform. It includes configurations for creating an EC2 instance, setting up user data for initialization, and creating an AMI from the instance.

## Project Structure

```
terraform-microservice
├── main.tf                # Main Terraform configuration for the EC2 instance
├── variables.tf           # Input variables for the Terraform configuration
├── outputs.tf             # Output values after infrastructure creation
├── ec2
│   ├── user_data.sh       # Shell script for configuring the EC2 instance on startup
├── ami
│   ├── main.tf            # Configuration for creating an AMI from the EC2 instance
│   ├── variables.tf       # Input variables for the AMI creation process
│   ├── outputs.tf         # Output values for the AMI configuration
└── README.md              # Project documentation
```

## Prerequisites

- Terraform installed on your local machine.
- AWS account with appropriate permissions to create EC2 instances and AMIs.
- AWS CLI configured with your credentials.

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd terraform-microservice
   ```

2. **Configure variables:**
   Edit the `variables.tf` file to set your desired region, instance type, and AMI ID.

3. **Initialize Terraform:**
   Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

4. **Plan the deployment:**
   Generate an execution plan with:
   ```
   terraform plan
   ```

5. **Apply the configuration:**
   Deploy the infrastructure with:
   ```
   terraform apply
   ```

6. **Access the EC2 instance:**
   After deployment, use the public IP address outputted by Terraform to SSH into the EC2 instance.

7. **Create an AMI (optional):**
   If you want to create an AMI from the running instance, navigate to the `ami` directory and repeat steps 3-5.

## Cleanup

To destroy the infrastructure and remove all resources created by Terraform, run:
```
terraform destroy
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.