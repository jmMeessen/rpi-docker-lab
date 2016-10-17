#!/usr/bin/env bash
echo `date +"%d-%m-%y %T"`
ansible-playbook -i hosts basicSetup.yml
echo `date +"%d-%m-%y %T"`
