apply:
	cd workspace/bj-zhwsapp-03 && terraform init -upgrade -plugin-dir ../../plugins
	cd workspace/bj-zhwsapp-03 && terraform apply -auto-approve
clean:
	cd workspace/bj-zhwsapp-03 && terraform destroy -auto-approve
