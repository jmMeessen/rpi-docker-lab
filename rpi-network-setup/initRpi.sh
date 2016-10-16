#!/usr/bin/env bash
ansible-playbook -i hosts basicSetup.yml  --limit=rpi-3
