include .env

init: 
	terraform -chdir=module/proxmox init -upgrade
plan: 
	PM_API_TOKEN_ID=${PM_API_TOKEN_ID} \
	PM_API_TOKEN_SECRET=${PM_API_TOKEN_SECRET} \
	terraform -chdir=module/proxmox plan

deploy:
	PM_API_TOKEN_ID=${PM_API_TOKEN_ID} \
	PM_API_TOKEN_SECRET=${PM_API_TOKEN_SECRET} \
	terraform -chdir=module/proxmox apply --auto-approve

destroy:
	PM_API_TOKEN_ID=${PM_API_TOKEN_ID} \
	PM_API_TOKEN_SECRET=${PM_API_TOKEN_SECRET} \
	terraform -chdir=module/proxmox destroy --auto-approve