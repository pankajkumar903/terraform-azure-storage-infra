**🚀 Terraform Azure Storage Infrastructure**

This repository contains a complete production-grade Terraform setup for deploying Azure Storage infrastructure across multiple environments (dev and prod) using a modular, scalable, and secure architecture.

The project follows best practices used in enterprise environments (PwC, Accenture, Infosys, TCS), including:

✨ Reusable Modules
✨ Global Remote Backend (tfstate storage)
✨ Environment-based configuration (dev/prod)
✨ Secure state locking & versioning
✨ Consistent folder structure
✨ Separation of concerns

📁 Project Structure
infra/
│── global/
│    └── backend/              # Terraform backend for remote state
│
│── modules/
│    └── storage/              # Reusable Azure Storage module
│
└── env/
     ├── dev/                  # Dev environment config
     └── prod/                 # Prod environment config

🧱 What This Project Deploys

This Terraform project provisions:

🌐 Global Backend (only once)

Azure Resource Group

Azure Storage Account

TFState Blob Container

Used for securely storing Terraform state files across environments.

🗂 Storage Module

Reusable module that deploys:

📦 Storage Account

🗄 Blob Container

📁 File Share

📑 Table Storage

📬 Storage Queue

All resources include production-grade tagging and configuration.

🔧 Dev & Prod Environments

Each environment deploys its own storage infrastructure using the shared module with environment-specific values.

🚀 How to Deploy
1️⃣ Deploy global backend (must be done first)
cd infra/global/backend
terraform init
terraform apply

2️⃣ Deploy Dev environment
cd infra/env/dev
terraform init -reconfigure
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"

3️⃣ Deploy Prod environment
cd infra/env/prod
terraform init -reconfigure
terraform plan -var-file="prod.tfvars"
terraform apply -var-file="prod.tfvars"

🎯 Key Features

✔️ Production-ready folder layout
✔️ Global backend for state locking
✔️ Environment isolation (dev/prod)
✔️ Consistent naming & tagging
✔️ Reusable Terraform module
✔️ Easy to extend for future services
✔️ Follows Terraform best practices

📦 Tech Stack

🧱 Terraform v1.x

☁️ AzureRM Provider v3.x

🗂 Azure Storage Services

🏗 Infrastructure as Code (IaC)

🤝 Contributing

PRs, issues, and suggestions are welcome!
This project is designed to be easily extendable for any Azure workloads.

🧑‍💻 Author

Pankaj Kumar
DevOps & Cloud Engineer
🚀 Focused on Azure, Terraform, Kubernetes, and CI/CD

⭐ Support

If you like this project, please consider giving it a ⭐ star on GitHub.
It helps others discover this repo and supports future improvements!
