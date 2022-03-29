#!/bin/bash

VENV=venv
TERRAFORM_VERSION=1.1.7

if [ ! -d "$VENV" ]; then
  python3 -m venv $VENV
  source $VENV/bin/activate
  pip install --upgrade pip
  pip install python-openstackclient
fi

source $VENV/bin/activate
source openrc.sh

# Fetch terraform
if [ ! -f terraform/terraform ]; then
    cd terraform
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
    cd ..
fi

# Map openstack variables to terraform variables
export TF_VAR_auth_url=$OS_AUTH_URL
export TF_VAR_region=$OS_REGION
export TF_VAR_username=$OS_USERNAME
export TF_VAR_password=$OS_PASSWORD
export TF_VAR_tenant=$OS_PROJECT_NAME
alias tf=$PWD/terraform/terraform

alias ssh-vdi='ssh vdiuser@$(tf output -raw public_ip) -o "UserKnownHostsFile=/dev/null"'

  