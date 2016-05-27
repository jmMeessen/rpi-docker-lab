#!/usr/bin/env bash
ansible-playbook -i hosts setupAP.yml -u pirate --ask-pass --limit=rpi3-1
