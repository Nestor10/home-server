
install_dev_deps:
	pip install .[dev]

install_ansible_deps:
	ansible-galaxy collection install -r requirements.yaml
	
create_secrets:
	ansible-vault create --vault-password-file secret/secret.txt vars/project_vars.yaml

secrets:
	ansible-vault edit --vault-password-file secret/secret.txt vars/project_vars.yaml

install_kind_cluster:
	ansible-playbook --vault-password-file secret/secret.txt -i inventory.yaml --tags "install, create" playbooks/kind.yaml

play_kind:
	ansible-playbook --vault-password-file secret/secret.txt -i inventory.yaml playbooks/kind.yaml
