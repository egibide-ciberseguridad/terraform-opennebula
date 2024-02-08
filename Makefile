#!make

help: _header
	${info }
	@echo Opciones:
	@echo ---------------------------------------------
	@echo build
	@echo init / plan / apply / show / output / destroy
	@echo ---------------------------------------------

_header:
	@echo ---------
	@echo Terraform
	@echo ---------

build:
	@docker compose build

init:
	@docker compose run --rm terraform init

plan:
	@docker compose run --rm terraform plan

apply:
	@docker compose run --rm terraform apply -auto-approve

show:
	@docker compose run --rm terraform show

output:
	@docker compose run --rm terraform output

destroy:
	@docker compose run --rm terraform destroy -auto-approve
