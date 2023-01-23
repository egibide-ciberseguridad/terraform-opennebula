help:
	@echo Opciones:
	@echo -------------------
	@echo build
	@echo init / apply / show / destroy
	@echo -------------------

build:
	@docker compose build

init:
	@docker compose run --rm terraform init

apply:
	@docker compose run --rm terraform apply -auto-approve

show:
	@docker compose run --rm terraform show

destroy:
	@docker compose run --rm terraform destroy -auto-approve
