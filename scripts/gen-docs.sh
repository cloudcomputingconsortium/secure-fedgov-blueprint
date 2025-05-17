#!/bin/bash
set -e

# Generate docs for root module
terraform-docs --config ../.terraform-docs.yml . > README.md

# Generate docs for each submodule
for dir in ../terraform/modules/*/; do
  (cd "$dir" && terraform-docs --config ../../../.terraform-docs.yml . > README.md)
done

echo "Terraform docs generated successfully."
