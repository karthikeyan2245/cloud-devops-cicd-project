# Cloud DevOps CI/CD Pipeline on AWS

This project demonstrates an end-to-end Cloud DevOps workflow by integrating modern DevOps tools and AWS services.

---

## Tech Stack

- AWS  
- Git & GitHub  
- Docker  
- Jenkins  
- Kubernetes (Amazon EKS)  
- Terraform

---

## Project Overview

- Developed a simple HTML web application  
- Containerized the application using Docker and Nginx  
- Version controlled using Git and GitHub  
- CI/CD pipeline and cloud deployment will be implemented

---

## Architecture

This section explains the complete pipeline architecture used in the project.

### High-Level Flow

Laptop (Local Machine)  
      ↓  
GitHub Repository  
      ↓  
Jenkins Pipeline on AWS EC2  
      ↓  
Docker Image Build  
      ↓  
Amazon Elastic Kubernetes Service (EKS)  
      ↓  
AWS Application Load Balancer via Kubernetes Ingress  
      ↓  
End Users access the application

---

### Component Details

**1. Application Code**
- The HTML application is developed and stored on the laptop.
- Git is used to track all changes.

**2. GitHub**
- Acts as central code repository.
- Stores Dockerfile, Jenkinsfile, and Kubernetes YAML manifests.

**3. Jenkins**
- Installed on an AWS EC2 instance.
- Automatically pulls code from GitHub.
- Builds Docker images as part of CI/CD.

**4. Docker**
- Packages the application into containers using Nginx.
- Ensures the app runs the same way on any environment.

**5. Kubernetes (AWS EKS)**
- Hosts the running containers on AWS infrastructure.
- Deployment.yaml, service.yaml, ingress.yaml manage the app.

**6. AWS ALB Ingress**
- Provides external internet access to the Kubernetes services.
- Generates a public DNS endpoint for the app.

---

## Author

Karthikeyan

