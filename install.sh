#!/bin/bash

ansible-playbook -i localhost, -c local playbook.yml "$@"
