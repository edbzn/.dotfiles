#!/bin/bash

set -e

cd "$(dirname "$0")"

ansible-playbook playbook.yml -i ./hosts --list-tags | grep -E 'TASK TAGS:'
