#!/usr/bin/env bash
ansible-playbook -i hosts test.yml  --limit=rpi-4
