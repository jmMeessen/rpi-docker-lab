#!/usr/bin/env bash
echo `date +"%d-%m-%y %T"`
ansible-playbook -i hosts playbooks/Rpi3basicSetup.yml --limit=rpi3
ansible-playbook -i hosts playbooks/Rpi2basicSetup.yml --limit=rpi2
echo `date +"%d-%m-%y %T"`
