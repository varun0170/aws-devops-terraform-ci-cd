AWS DevOps Infrastructure Automation with Terraform & CI/CD
📌 Overview

This project demonstrates the design and implementation of a production-ready AWS infrastructure using Terraform (Infrastructure as Code) and GitHub Actions (CI/CD).

The goal of this project is to showcase scalable, automated, and repeatable cloud infrastructure following industry best practices.
It reflects real-world DevOps workflows used by global engineering teams to reduce manual effort, improve reliability, and enable faster deployments.

🏗️ Architecture Overview

The infrastructure consists of the following components:

VPC

Custom CIDR block

Public and private subnets across multiple Availability Zones

EC2

Compute layer deployed in a public subnet

RDS (PostgreSQL)

Managed database deployed in private subnets

CI/CD Pipeline

Automated Terraform validation and planning using GitHub Actions

Internet
   |
Public Subnet
   └── EC2 Instance
        |
Private Subnets
   └── RDS (PostgreSQL)

🧱 Project Structure
aws-devops-terraform-ci-cd/
├── README.md
├── .gitignore
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── providers.tf
│   └── backend.tf
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── rds/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── .github/
    └── workflows/
        └── terraform-ci.yml

🔑 Key Features
✅ Modular Infrastructure as Code

Reusable Terraform modules for:

VPC

EC2

RDS

Clear separation of concerns

Easy to extend for future environments (dev, staging, prod)

✅ Automation with CI/CD

GitHub Actions pipeline automatically runs:

terraform fmt

terraform validate

terraform plan

Ensures code quality and consistency on every push or PR

✅ Cloud Best Practices

Private subnets for databases

Public subnets only for compute

Variable-driven configuration

Outputs for cross-module integration

🔹 Prerequisites

Before executing this project, ensure the following are available:

1️⃣ AWS Account

Active AWS account

IAM user with permissions for:

VPC, EC2, RDS

Subnets and Security Groups

2️⃣ AWS CLI
aws configure


Region example: eu-west-2

3️⃣ Terraform

Version >= 1.5.0

terraform -v

4️⃣ Git & GitHub

Git installed locally

GitHub account with Actions enabled

5️⃣ Operating System

Linux / macOS / Windows (WSL recommended)

▶️ How to Run the Project
cd terraform
terraform init
terraform plan
terraform apply


⚠️ Note: This will create real AWS resources and may incur costs.

🌍 Why This Project Matters

In modern cloud environments, manual infrastructure provisioning does not scale.

This project demonstrates how:

Infrastructure can be version-controlled

Deployments can be automated and auditable

Teams can move faster with lower operational risk

These principles are essential for:

High-growth startups

Enterprise platforms

Globally distributed engineering teams

🧠 Skills Demonstrated

AWS Cloud Architecture

Terraform (IaC)

GitHub Actions (CI/CD)

DevOps Automation

Infrastructure Design & Documentation

📈 Future Enhancements

Add security groups and IAM roles

Introduce multiple environments (dev/stage/prod)

Add Terraform Apply via manual approval

Integrate monitoring and logging

Extend to ECS / EKS deployments

👤 Author

Varun Nalluri
DevOps Engineer | AWS Certified Solutions Architect
📍 United Kingdom

🔗 GitHub: https://github.com/varun0170

🔗 LinkedIn: https://www.linkedin.com/in/varun-nalluri-432816a9/
