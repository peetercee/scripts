#!bin/bash

ansible-playbook filebeat-playbook.yml

echo "done filebeat!"

ansible-playbook metricbeat-playbook.yml

echo "done metricbeat!"

ansible-playbook auditbeat-playbook.yml

echo "done auditbeat!"

ansible-playbook packetbeat-playbook.yml

echo "done packetbeat!"
