# home-server
This project initzes home servers with needed packages. Starts a kind cluster and bootstraps 
argoCD


# environment setup

*  pyenv  (fedora)
    `sudo dnf builddep python3`

    `curl https://pyenv.run | bash`

    `pyenv virtualenv 3.12.7 home-server-ansible`

    `pyenv local home-server-ansible`

    `python -m pip install --upgrade pip`

    `pip install -e .[dev,test]`

    `ansible-galaxy collection install -r requirements.yml`

* 
## Cheat sheet 
verify inventory
`ansible-inventory -i inventory.yaml --list`

use make file for common tasks 

This may be needed after updating to a newer version of podman
`podman system reset --force`


For fedora systems 
we need 
    `sudo dnf install python3-libdnf5`

