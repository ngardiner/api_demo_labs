# Demo 2 - Batch Mode Demo

## Login 
mgmt_cli login user admin password vpn123 > id.txt

# Import CSV Files
mgmt_cli add host -s id.txt --batch hosts.csv
mgmt_cli add group -s id.txt --batch groups.csv
mgmt_cli set group -s id.txt --batch membership.csv

# Publish Changes
mgmt_cli publish -s id.txt
