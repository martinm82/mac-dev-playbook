#!/bin/sh

xcode-select --install
python3 -m pip install ansible-core==2.11 --user

ansible-galaxy collection install -r requirements.yml
ansible-galaxy role install -r requirements.yml
