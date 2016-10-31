#!/usr/bin/env bash
ansible-playbook -i hosts playbooks/test.yml  --limit=rpi-4
