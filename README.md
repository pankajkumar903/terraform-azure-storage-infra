# 🚀 Terraform Azure Storage Infrastructure

This repository contains a complete production-grade Terraform setup for deploying Azure Storage infrastructure across multiple environments (`dev` and `prod`) using a modular, scalable, and secure architecture.

The project follows best practices used in enterprise environments (PwC, Accenture, Infosys, TCS), including:

* ✨ Reusable Modules
* ✨ Global Remote Backend (tfstate storage)
* ✨ Environment-based configuration (dev/prod)
* ✨ Secure state locking & versioning
* ✨ Consistent folder structure
* ✨ Separation of concerns

---

## 📁 Project Structure

```
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
```

---

## 🧱 What This Project Deploys

### 🌐 Global Backend (only once)

Creates shared components for storing Terraform state:

* Azure Resource Group
* Azure Storage Account
* TFState Blob Container

Used to securely store and lock Terraform state across environments.

---

### 🗂 Storage Module (Reusable)

This module deploys:

* 📦 Storage Account
* 🗄 Blob Container
* 📁 File Share
* 📑 Table Storage
* 📬 Storage Queue

Includes production-grade tagging and configuration.

---

### 🔧 Dev & Prod Environments

Each environment deploys **its own** storage infrastructure using the **shared module** with environment-specific variables (`dev.tfvars`, `prod.tfvars`).

---

## 🚀 How to Deploy

### 1️⃣ Deploy Global Backend (must be done first)

```
cd infra/global/backend
terraform init
terraform apply
```

### 2️⃣ Deploy Dev Environment

```
cd infra/env/dev
terraform init -reconfigure
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"
```

### 3️⃣ Deploy Prod Environment

```
cd infra/env/prod
terraform init -reconfigure
terraform plan -var-file="prod.tfvars"
terraform apply -var-file="prod.tfvars"
```

---

## 🎯 Key Features

* ✔️ Production-ready folder layout
* ✔️ Global backend for safe state locking
* ✔️ Dev/Prod environment isolation
* ✔️ Consistent naming & tagging standards
* ✔️ Reusable, modular Terraform code
* ✔️ Easily extendable for future cloud resources
* ✔️ Follows Terraform best practices

---

## 📦 Tech Stack

* 🧱 Terraform v1.x
* ☁️ AzureRM Provider v3.x
* 🗂 Azure Storage Services
* 🏗 Infrastructure as Code (IaC)

---

## 🤝 Contributing

PRs, issues, and suggestions are welcome!
This project is designed to be easily extendable for any Azure workloads.

---

## 🧑‍💻 Author

**Pankaj Kumar**
DevOps & Cloud Engineer
🚀 Focused on Azure, Terraform, Kubernetes, and CI/CD

---

## ⭐ Support

If you like this project, please consider giving it a ⭐ star on GitHub.
It helps others discover this repo and supports future improvements!

Just tell me **“add badges”** or **“add pipeline”** 🌟
