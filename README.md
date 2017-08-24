# install_rma_cv

Ansible-based installation of Run my Accounts (community version) on
a Debian root server.

Supported Debian versions:


* Debian 8 (jessie)
* Debian 9 (stretch)


## Installation prerequisites:


We assume an essentially unconfigured server. If you are already running
specially configured Apache or PostgreSQL services, this installer may not be
right for you.


On Debian 9, just install these packages:

```sh
apt install git ansible python
```


On Debian 8, the shipped version of ansible is too old. Therefore:

```sh
apt install git python-pip python-paramiko python-yaml python-jinja2

pip install ansible
```



## Installation:

Clone this repository and ch'dir into project folder:

```sh
git clone https://github.com/Salvor42/install_rma_cv.git
cd install_rma_cv
```

Copy the setup variables file and eventually make some changes in `setup.yml`:

```sh
cp vars/setup-sample.yml vars/setup.yml

# <YOUR_EDITOR> vars/setup.yml
```

Start installation procedure:

```sh
bash install.sh
```
