# Secure Nginx Container

This project demonstrates a practical **DevSecOps workflow** where a Dockerized Nginx application is automatically built and scanned for security vulnerabilities before being approved for deployment. The goal of this repository is to show how security can be integrated early in the CI/CD pipeline using automated vulnerability scanning and container hardening best practices.

## Technology Stack

- **Containerization:** Docker (Nginx Unprivileged)
- **CI/CD:** GitHub Actions
- **Security Scanning:** Aqua Security Trivy

## How the Pipeline Works

### Image Build
A lightweight Nginx Docker image is built as part of the CI pipeline.

### Container Hardening
The image is based on `nginx-unprivileged:alpine`, ensuring the application runs as a non-root user in accordance with the principle of least privilege.

### Vulnerability Scanning
GitHub Actions executes Trivy to scan both the operating system packages and application dependencies for known CVEs.

### Security Gate
The pipeline fails automatically if any vulnerabilities with a severity level of **HIGH** or **CRITICAL** are detected.

## Security Measures Implemented

### Non-Root Execution
Reduces the risk of privilege escalation inside the container.

### Minimal Base Image
Alpine Linux is used to limit the attack surface and reduce unnecessary packages.

### Automated Security Checks
Security scanning is integrated directly into the CI process, following a shift-left security approach.
