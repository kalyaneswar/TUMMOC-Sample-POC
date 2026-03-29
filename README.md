# Infrastructure Repository

This repository contains our infrastructure as code (IaC) configurations, managed with Terraform and automated via GitHub Actions CI/CD pipelines.

## 📂 Directory Structure

* **`.github/workflows/`**: Contains the GitHub Actions workflow files (`.yml`) for automating infrastructure deployments (e.g., triggering `terraform plan` on PRs and `terraform apply` on merges).
* **`environments/`**: Contains environment-specific infrastructure definitions and modules.
  * `dev/`: Development environment setup.
  * `stage/`: Staging/pre-production environment setup.
  * `prod/`: Production environment setup.
  * `modules/`: Contains reusable, shared local Terraform modules across all environments.
* **`vars/`**: Contains the Terraform variable definition override files (`.tfvars`) for each specific environment.
  * `dev.tfvars`: Values for the development environment.
  * `stage.tfvars`: Values for the staging environment.
  * `prod.tfvars`: Values for the production environment.

## 🚀 Usage

To deploy or make changes to a specific environment locally, make sure to pass the corresponding `.tfvars` override file to your Terraform commands.

### Deploying to Development
```bash
terraform init
terraform plan -var-file="vars/dev.tfvars"
terraform apply -var-file="vars/dev.tfvars"
```

### Deploying to Staging
```bash
terraform init
terraform plan -var-file="vars/stage.tfvars"
terraform apply -var-file="vars/stage.tfvars"
```

### Deploying to Production
```bash
terraform init
terraform plan -var-file="vars/prod.tfvars"
terraform apply -var-file="vars/prod.tfvars"
```

## 🛠️ CI/CD

All deployments are handled through GitHub Actions. 
- Opening a pull request will automatically trigger a `terraform plan` against the target environment.
- Merging to the main branch will trigger a `terraform apply`.
