# 🏗️ Terraform Practice Repository

This repository contains my **beginner-level hands-on practice with Terraform** while learning AWS and Infrastructure as Code (IaC).

It includes **simple, experimental, and random practice configurations** created during my learning phase. The goal of this repo is to **understand concepts step-by-step**, not to build production-ready infrastructure.

---

## 🎯 Purpose

- Learn Terraform from scratch  
- Practice AWS resource provisioning  
- Understand core Terraform concepts through hands-on work  
- Build a strong foundation for DevOps  

---

## 🧠 What I Practiced

- Basic Terraform workflow (`init`, `plan`, `apply`, `destroy`)  
- Hardcoded configurations (initial learning stage)  
- Using **variables** and `terraform.tfvars`  
- Working with **outputs**  
- Using **count** and **for_each**  
- Backend configuration (S3 for state storage)  
- Basic resource creation and management  

---

## ☁️ AWS Services Used

- **EC2** – launching instances  
- **S3** – buckets and basic configurations  
- **VPC** – basic networking concepts  
- **IAM** – users and permissions  
- **Security Groups** – access control  

---

## 🗂️ Repository Structure

```text
terraform-practice/
├── ec2/
├── s3/
├── vpc/
├── iam/
├── backend/
├── variables/
├── outputs/
└── misc/
```

---

## ⚙️ How to Use

1. Go into any folder:
   ```bash
   cd <folder-name>
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Check execution plan:
   ```bash
   terraform plan
   ```

4. Apply changes:
   ```bash
   terraform apply
   ```

5. Destroy resources:
   ```bash
   terraform destroy
   ```

---

## 📌 Note

This repository is part of my **learning journey**, so:

- Code may not follow best practices  
- Structure is not standardized  
- Some configurations are intentionally simple or repetitive  

The focus is purely on **learning and experimenting with Terraform concepts**.

---

## 🚀 Next Step

After gaining hands-on experience here, I started building **structured and reusable Terraform modules** in a separate repository.

---

## 👨‍💻 Author

**Muhammad Adeel**    : 
Cloud Associate | AWS Cloud Practitioner | Aspiring DevOps Engineer 🚀
