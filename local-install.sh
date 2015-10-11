#!/bin/bash

ansible-playbook -i "localhost," -c local provision/main.yml --ask-sudo-pass

