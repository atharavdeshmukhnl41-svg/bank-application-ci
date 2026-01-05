#!/bin/bash

BASE_DIR=bank-application-ci/terraform

echo "Creating Terraform structure inside bank-application-ci..."

# Root terraform directory
mkdir -p $BASE_DIR

# Core terraform files
touch $BASE_DIR/backend.tf
touch $BASE_DIR/providers.tf
touch $BASE_DIR/versions.tf
touch $BASE_DIR/variables.tf
touch $BASE_DIR/outputs.tf

# Modules
MODULES=("resource-group" "network" "acr" "aks")

for module in "${MODULES[@]}"; do
  mkdir -p $BASE_DIR/modules/$module
  touch $BASE_DIR/modules/$module/main.tf
  touch $BASE_DIR/modules/$module/variables.tf
  touch $BASE_DIR/modules/$module/outputs.tf
done

# Environments
ENVS=("dev" "prod")

for env in "${ENVS[@]}"; do
  mkdir -p $BASE_DIR/environments/$env
  touch $BASE_DIR/environments/$env/main.tf
  touch $BASE_DIR/environments/$env/terraform.tfvars
  touch $BASE_DIR/environments/$env/backend.tfvars
done

# Ensure Git tracks empty directories
find $BASE_DIR -type d -empty -exec touch {}/.gitkeep \;

echo "Terraform folder structure created successfully."
