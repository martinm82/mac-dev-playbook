#!/bin/sh

python3 -mvenv env
PREFIX=env/bin

xcode-select --install
$PREFIX/python3 -m pip install ansible-core

$PREFIX/ansible-galaxy collection install -r requirements.yml
$PREFIX/ansible-galaxy role install -r requirements.yml
