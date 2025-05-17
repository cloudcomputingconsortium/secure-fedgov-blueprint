# Secure FedGov Blueprint

This repository contains an Azure Blueprint and Bicep modules for deploying a secure, FedRAMP High-compliant environment.

## Components

- Azure Blueprint with policy and role assignments
- Bicep modules for:
  - Key Vault
  - Log Analytics
  - Network Security Group
  - Recovery Vault
- GitHub Actions workflow for CI/CD

## Usage

1. Configure your Azure credentials in GitHub Secrets.
2. Push to `main` to trigger deployment.
