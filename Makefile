help:
	@echo Opciones:
	@echo -------------------
	@echo deploy
	@echo clean
	@echo -------------------

deploy:
	@terraform apply -auto-approve

clean:
	@terraform destroy -auto-approve
