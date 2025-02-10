#!/bin/bash

set -e

cd "$(dirname "$0")"

if [[ $# -eq 0 ]]; then
  echo "Updating local dev environment..."
  ansible-playbook -i ./hosts ./playbook.yml --skip-tags "bootstrap" --ask-become-pass
else
  echo "Updating local dev environment... (--tags $@)"
  # format args for ansible from tagA tagB tagC to "tagA,tagB,tagC"
  tags=$(echo $@ | sed 's/ /,/g')
  ansible-playbook -i ./hosts ./playbook.yml --tags "$tags" --ask-become-pass
fi

if command -v notify-send 1>/dev/null 2>&1; then
  notify-send -i face-smile "Dotfiles update complete" "Successfully updated dev environment."
fi
