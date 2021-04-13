#!/usr/bin/env bash
terraform fmt --recursive
rm .terraform.lock.hcl 2>/dev/null
rm .terraform -fr 2>/dev/null
terraform init -upgrade
terraform validate
make valid
