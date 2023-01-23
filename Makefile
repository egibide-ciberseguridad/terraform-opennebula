help:
	@echo Opciones:
	@echo -------------------
	@echo build
	@echo init
	@echo deploy
	@echo clean
	@echo -------------------

build:
	@docker compose build

init:
	@docker compose run --rm terraform init

deploy:
	@docker compose run --rm terraform apply -auto-approve

clean:
	@docker compose run --rm terraform destroy -auto-approve
