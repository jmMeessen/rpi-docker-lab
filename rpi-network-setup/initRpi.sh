#!/usr/bin/env bash
ansible-playbook -i hosts basicSetup.yml -u pirate --ask-pass --limit=rpi3-1
