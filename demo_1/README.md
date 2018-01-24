# Demo

## Login and show JSON response

mgmt_cli login user admin password vpn123

## Login and store response

mgmt_cli login user admin password vpn123 > id.txt

cat id.txt

mgmt_cli logout -s id.txt
