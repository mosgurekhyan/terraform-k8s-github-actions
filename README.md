# DevOps Homework

Three-part assignment demonstrating Terraform, Kubernetes, and GitHub Actions.

## Structure
- `main.tf` — AWS provider + t3.micro EC2
- `variables.tf` — AWS region variable
- `outputs.tf` — EC2 instance ID output
- `deployment.yaml` — Nginx Deployment (2 replicas)
- `service.yaml` — NodePort Service (80 → 80)
- `.github/workflows/ci.yml` — CI workflow on push to main

## Screenshots
- `screenshots/terraform-plan.png`
- `screenshots/k8s-pods.png`
- `screenshots/github-actions.png`