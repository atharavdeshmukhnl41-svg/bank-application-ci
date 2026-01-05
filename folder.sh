#!/bin/bash

BASE_DIR=bank-application-ci
SERVICES=("auth" "gateway" "user" "wallet")

echo "Creating CI repository folder structure (excluding services/)..."

cd $BASE_DIR || { echo "$BASE_DIR does not exist"; exit 1; }

# 1️⃣ Docker folder + Dockerfiles
mkdir -p docker
for svc in "${SERVICES[@]}"; do
  touch docker/Dockerfile.$svc
done

# 2️⃣ Pipelines folder + YAML files
mkdir -p pipelines
for svc in "${SERVICES[@]}"; do
  touch pipelines/$svc-ci.yml
done

# 3️⃣ Helm folder + charts
mkdir -p helm
for svc in "${SERVICES[@]}"; do
  mkdir -p helm/$svc/templates
  touch helm/$svc/Chart.yaml
  touch helm/$svc/values.yaml
  # Add common templates
  touch helm/$svc/templates/deployment.yaml
  touch helm/$svc/templates/service.yaml
  # Only auth & gateway will have ingress.yaml by default
  if [[ "$svc" == "auth" || "$svc" == "gateway" ]]; then
    touch helm/$svc/templates/ingress.yaml
  fi
done

# 4️⃣ Add .gitkeep for any empty folders (just in case)
find . -type d -empty -exec touch {}/.gitkeep \;

echo "CI repo folder structure created successfully in $BASE_DIR"

