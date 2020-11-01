#!bin/bash

#Install and configure filebeat
ansible-playbook filebeat/filebeat-playbook.yml

#Install and configure metricbeat
ansible-playbook metricbeat/metricbeat-playbook.yml

#Install and configure auditbeat
ansible-playbook auditbeat/auditbeat-playbook.yml

#Install and configure packetbeat
ansible-playbook packetbeat/packetbeat-playbook.yml
