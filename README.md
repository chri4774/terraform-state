# Terraform State Backend


## Terraform state file verschlüsseln

    openssl enc -aes-256-cbc -in terraform.tfstate -out terraform.tfstate.enc

## Terraform state file entschlüsseln

    openssl enc -d -aes-256-cbc -in terraform.tfstate.enc -out /tmp/terraform.tfstate
