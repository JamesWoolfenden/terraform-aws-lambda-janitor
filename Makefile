#Makefile

.PHONY: all

all: init plan build

init:
	rm -rf .terraform/modules/
	terraform init -reconfigure -upgrade

plan: init
	terraform plan -refresh=true

build: init
	terraform apply -auto-approve

check: init
	terraform plan -detailed-exitcode

destroy: init
	terraform destroy -force

valid:
	terraform validate
	terraform fmt
