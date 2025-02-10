#!/bin/bash

set -e

cd "$(dirname "$0")"

if ! [ -x "$(command -v ansible)" ]; then
  sudo apt install ansible
fi

ansible-galaxy install -r ./meta/requirements.yml
ansible-playbook -i ./hosts ./playbook.yml --ask-become-pass

if command -v notify-send 1>/dev/null 2>&1; then
  notify-send -i face-smile "Dotfiles install complete" "Successfully set up dev environment."
fi
