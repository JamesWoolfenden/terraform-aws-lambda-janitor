# terraform-aws-lambda-janitor

This template creates a lambda which can purge to number of used lambda versions in an AWS region.
There currently is total of 75 GB of lambda package space available and it is possible to run out.

When run, this will purge old versions and package.

The lambda code comes from an article:
<https://theburningmonk.com/2016/08/aws-lambda-janitor-lambda-function-to-clean-up-old-deployment-packages/>
