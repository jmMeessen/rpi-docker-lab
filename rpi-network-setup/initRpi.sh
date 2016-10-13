#!/usr/bin/env bash
ansible-playbook -i hosts basicSetup.yml  --limit=rpi3-2
