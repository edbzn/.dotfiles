#!/bin/bash
set -e

if ! [ -x "$(command -v ansible)" ]; then
  sudo apt install ansible
fi

ansible-playbook -i ./hosts ./playbook.yml --ask-become-pass

if command -v notify-send 1>/dev/null 2>&1; then
  notify-send -i face-smile "Dotfiles install complete" "Successfully set up dev environment."
fi
