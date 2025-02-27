# home-server
This project initzes home servers with needed packages. Starts a kind cluster and bootstraps 
argoCD


# environment setup

*  pyenv  (fedora)

    `dnf install go-task`

    `sudo dnf builddep python3`

    `curl https://pyenv.run | bash`

    `pyenv virtualenv 3.12.7 home-server-ansible`

    `pyenv local home-server-ansible`

    `python -m pip install --upgrade pip`

    `pip install -e .[dev,test]`

    `ansible-galaxy collection install -r requirements.yml`

## Cheat sheet 
verify inventory
`ansible-inventory -i inventory.yaml --list`

use make file for common tasks 

For fedora systems 
we need 
    `sudo dnf install python3-libdnf5`

## TODOs
* right now we are tooled to work on one node. But adapting this to multiple nodes should be fairly straight forward
  * refactor to isolate per-node microk8s install
    * we'll run once on several tasks
  * refactor to isolate per-cluster actions
  * migrate to task file
* replace nginx with something else