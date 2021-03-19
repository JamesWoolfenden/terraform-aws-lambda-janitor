# terraform-aws-lambda-janitor

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-lambda-janitor/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-lambda-janitor)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-lambda-janitor.svg)](https://github.com/JamesWoolfenden/terraform-aws-lambda-janitor/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-lambda-janitor.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-lambda-janitor/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-lambda-janitor/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-lambda-janitor&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-lambda-janitor/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-lambda-janitor&benchmark=INFRASTRUCTURE+SECURITY)

This template creates a lambda which can purge to number of used lambda versions in an AWS region.
There currently is total of 75 GB of lambda package space available and it is possible to run out.

When run, this will purge old versions and package.

Before you apply this template you will first need to build the Javascript:

```npm
cd lambda
npm install
npm build
```

The lambda code comes from an article:
<https://theburningmonk.com/2016/08/aws-lambda-janitor-lambda-function-to-clean-up-old-deployment-packages/>
