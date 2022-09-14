virginia: 
		terraform init && terraform fmt && terraform validate  && terraform workspace new virginia || terraform workspace select virginia && terraform apply -var-file envs/virginia.tfvars -auto-approve 

ohio: 
		terraform init && terraform fmt && terraform validate  && terraform workspace new ohio || terraform workspace select ohio && terraform apply -var-file envs/ohio.tfvars -auto-approve 


oregon: 
		terraform init && terraform fmt && terraform validate  && terraform workspace new oregon || terraform workspace select oregon && terraform apply -var-file envs/oregon.tfvars -auto-approve 

london: 
		terraform init && terraform fmt && terraform validate  && terraform workspace new london || terraform workspace select london && terraform apply -var-file envs/london.tfvars -auto-approve 


####Destroy Commands####
destroy_virginia: 
		terraform workspace select virginia && terraform destroy -var-file envs/virginia.tfvars --auto-approve

destroy_ohio: 
		terraform workspace select ohio && terraform destroy -var-file envs/ohio.tfvars --auto-approve

destroy_oregon: 
		terraform workspace select oregon &&  terraform destroy -var-file envs/oregon.tfvars --auto-approve

destroy_london: 
		terraform workspace select london &&  terraform destroy -var-file envs/london.tfvars --auto-approve

destroy_all: 
		make destroy_virginia && make destroy_ohio && make destroy_oregon && make destroy_london