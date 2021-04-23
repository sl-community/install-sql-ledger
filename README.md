# install-sql-ledger

Ansible-based installation of Run my Accounts (community version) on
a Debian root server.

Supported Debian version:


* Debian 10 (buster)



## Installation prerequisites:


We assume an essentially unconfigured server. If you are already running
specially configured Apache or PostgreSQL services, this installer may not be
right for you.

First we need a more recent version of Ansible. We use the version
from the Backports repository:

```sh
echo "deb http://ftp.debian.org/debian stretch-backports main" \
     >/etc/apt/sources.list.d/backports.list
apt update

apt install -t stretch-backports ansible
```


And (of course) we need git:

```sh
apt install git
```

## Installation:

Clone this repository and ch'dir into project folder:

```sh
git clone https://github.com/sl-community/install-sql-ledger.git
cd install-sql-ledger
```

Copy the setup variables file and eventually make some changes in `setup.yml`.
You will have to set the `rma_admin_password`:


```sh
cp vars/setup-sample.yml vars/setup.yml

# <YOUR_EDITOR> vars/setup.yml
```

Start installation procedure:

```sh
./install.sh
```

## Installation parameters (interesting for developers)

Any parameters after `install.sh` are passed through to the internal 
`ansible-playbook`-command. Especially useful should be `-t <TAG>` calls
(see `playbook.yml` for all available tags).

For example, 

```sh
./install.sh -t clone
```

would only process the "git clone"-part of the installation procedure
(which is handy when you change the branch).






## After installation:

Open your Web browser and ...

... access SQL-Ledger admin interface:

```sh
https://<NAME_OR_IP_ADDRESS>/sql-ledger/admin.pl
```

... access SQL-Ledger user interface:

```sh
https://<NAME_OR_IP_ADDRESS>/sql-ledger/login.pl
```

... access SQL-Ledger setup check:

```sh
https://<NAME_OR_IP_ADDRESS>/sql-ledger/setup_check.pl
```

