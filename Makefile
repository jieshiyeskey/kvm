apply:
	cd workspace/bj-zhwsapp-07 && terraform init -upgrade -plugin-dir ../../plugins
	cd workspace/bj-zhwsapp-07 && terraform apply -auto-approve
clean:
	cd workspace/bj-zhwsapp-07 && terraform destroy -auto-approve
