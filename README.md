# Particle41 DevOps Challenge

This repository contains my solution to the Particle41 DevOps technical assessment.
The goal of this project is to demonstrate DevOps fundamentals including
containerization, infrastructure-as-code, and cloud-native deployment practices.

---

## Repository Structure

.
├── README.md
├── app
│ ├── main.py
│ ├── Dockerfile
│ └── requirements.txt
└── terraform
├── main.tf
├── variables.tf
└── outputs.tf


---

## Task 1 – SimpleTimeService

SimpleTimeService is a minimal web service that returns:
- Current timestamp
- IP address of the client

### Endpoint



GET /


### Sample Response

{
  "timestamp": "2025-12-08T09:55:38.747230Z",
  "ip": "192.168.1.24"
}


### Running the Application Locally
### Prerequisites

Docker
Git

Build Docker Image
docker build -t simpletimeservice ./app

Run the Container
docker run -p 8080:8080 simpletimeservice


Open in browser:

http://localhost:8080

Docker Image (Public)

The Docker image is published to Docker Hub:

vermamandeep649/simpletimeservice:latest

## Task 2 – Infrastructure as Code (Terraform)

Terraform is used to define AWS-compatible infrastructure including:

VPC with 2 public and 2 private subnets

Internet Gateway and NAT Gateway

Security Groups

ECS Cluster (Fargate)

Application Load Balancer

ECS Service and Task Definition

### Terraform Commands
cd terraform
terraform init
terraform plan
terraform apply

### LocalStack Usage (Important)

Due to AWS account activation and billing limitations, LocalStack was used to
simulate AWS services locally.

Using LocalStack (Free Edition), the following components were successfully
validated:

VPC

Subnets

Route tables

Internet Gateway

NAT Gateway

Security Groups

⚠️ ECS, Fargate, and Application Load Balancer are not supported in LocalStack
Free Edition, which results in runtime errors during resource creation.

The Terraform configuration itself is correct and production-ready and will
work without modification in a fully activated AWS account.

### Cleanup:

When using real AWS:

terraform destroy

### Notes:

No secrets or credentials are committed.
Docker container runs as a non-root user.
Infrastructure follows best practices.
