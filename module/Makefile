include .env

init: 
	terraform -chdir=proxmox/terraform init -upgrade
plan: 
	PM_API_TOKEN_ID=${PM_API_TOKEN_ID} \
	PM_API_TOKEN_SECRET=${PM_API_TOKEN_SECRET} \
	terraform -chdir=proxmox/terraform plan

deploy:
	PM_API_TOKEN_ID=${PM_API_TOKEN_ID} \
	PM_API_TOKEN_SECRET=${PM_API_TOKEN_SECRET} \
	terraform -chdir=proxmox/terraform apply --auto-approve

destroy:
	PM_API_TOKEN_ID=${PM_API_TOKEN_ID} \
	PM_API_TOKEN_SECRET=${PM_API_TOKEN_SECRET} \
	terraform -chdir=proxmox/terraform destroy --auto-approve