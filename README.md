# install-sql-ledger

Ansible-based installation of Run my Accounts (community version) on
a Debian root server.

Supported Debian version:


* Debian 9 (stretch)



## Installation prerequisites:


We assume an essentially unconfigured server. If you are already running
specially configured Apache or PostgreSQL services, this installer may not be
right for you.


Now, just install these packages:

```sh
apt install git ansible python
```

## Installation:

Clone this repository and ch'dir into project folder:

```sh
git clone https://github.com/sl-community/install-sql-ledger.git
cd install-sql-ledger
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

## After installation:

Open your Web browser and...

... access SQL-Ledger admin interface: 

```sh
https://<IP_ADDRESS>/sql-ledger/admin.pl
```

...access SQL-Ledger user interface:

```sh
https://<IP_ADDRESS>/sql-ledger/login.pl
```

