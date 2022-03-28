#!/bin/bash

# Fetch terraform
TERRAFORM_VERSION=1.1.7

if [ ! -f terraform ]; then
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
fi

# Map openstack variables to terraform variables
export TF_VAR_auth_url=$OS_AUTH_URL
export TF_VAR_region=$OS_REGION
export TF_VAR_username=$OS_USERNAME
export TF_VAR_password=$OS_PASSWORD
export TF_VAR_tenant=$OS_PROJECT_NAME
alias tf=./terraform

alias ssh-vdi='ssh john@$(tf output -raw public_ip)'
