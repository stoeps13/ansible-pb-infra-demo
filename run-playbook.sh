#!/usr/bin/env bash
# Configure STDOUT_CALLBACK if -v is attached to the command
# so the output is better readable during troubleshooting

echo -n "$@" | grep -q -- "-v" && export ANSIBLE_STDOUT_CALLBACK=yaml

ansible-playbook site.yml "$@"
