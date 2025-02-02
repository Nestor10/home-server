
install_dev_deps:
	pip install .[dev]

install_ansible_deps:
	ansible-galaxy collection install -r requirements.yaml
	
create_secrets:
	ansible-vault create --vault-password-file secret/secret.txt vars/pia.yaml

secrets:
	ansible-vault edit --vault-password-file secret/secret.txt vars/pia.yaml

# sudo_secrets:
# 	ansible-vault create group_vars/<groupname>/ansible.yml

quadlet:
	ansible-playbook --vault-password-file secret/secret.txt -i inventory.yaml playbooks/kind.yaml
