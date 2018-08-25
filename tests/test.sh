#!/bin/sh

echo "SCENARIO 1: create EVS"
ansible-playbook test.yml -e "evs_name=ansible-evs02 localaction=create waitfor=True" || exit 1
echo "SCENARIO 2: show EVS"
ansible-playbook test.yml -e "evs_name=ansible-evs02 localaction=show" || exit 1
echo "SCENARIO 3: list EVS"
ansible-playbook test.yml -e "localaction=list" || exit 1
echo "SCENARIO 4: delete EVS"
ansible-playbook test.yml -e "evs_name=ansible-evs02 localaction=delete waitfor=True" || exit 1
echo "SCENARIO 5: create EVS multiattach"
ansible-playbook test.yml -e "evs_name=ansible-evs02 localaction=create evs_multiattach=True waitfor=True" || exit 1
echo "SCENARIO 6: delete EVS multiattach"
ansible-playbook test.yml -e "evs_name=ansible-evs02 localaction=delete waitfor=True" || exit 1
