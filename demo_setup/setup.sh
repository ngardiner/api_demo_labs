#!/bin/bash

mgmt_cli login --root > /tmp/id.txt
mgmt_cli add host name Host_192.168.1.100 ipv4-address 192.168.1.100 -s id.txt
mgmt_cli add host name Host_192.168.1.101 ipv4-address 192.168.1.101 -s id.txt
mgmt_cli add group name Internal_Hosts -s id.txt
mgmt_cli set group name Internal_Hosts members.add.1 Host_192.168.1.100 members.add.2 Host_192.168.1.101 -s id.txt

add network name Net_192.168.111.0 subnet 192.168.111.0 mask-length 24 color cyan -s id.txt
add network name Net-192.168.113.0 subnet 192.168.113.0 mask-length 24 color cyan -s id.txt
add network name Net-192.168.114.0 subnet 192.168.114.0 mask-length 24 color cyan -s id.txt
add network name Net-192.168.116.0 subnet4 192.168.116.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.117.0 subnet4 192.168.117.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.119.0 subnet4 192.168.119.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.122.0 subnet4 192.168.122.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.123.0 subnet4 192.168.123.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.124.0 subnet4 192.168.124.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.125.0 subnet4 192.168.125.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.126.0 subnet4 192.168.126.0 mask-length4 24 color cyan -s id.txt
add network name Net-192.168.131.0 subnet4 192.168.131.0 mask-length4 24 color cyan -s id.txt


add group name Internal-Nets color cyan -s id.txt
set group name Internal-Nets members.add.1 Net-192.168.111.0 members.add.2 Net-192.168.113.0 members.add.3 Net-192.168.114.0 members.add.4 Net-192.168.116.0 members.add.5 Net-192.168.117.0 members.add.6 Net-192.168.119.0  members.add.7 Net-192.168.122.0 members.add.8 Net-192.168.123.0 members.add.9 Net-192.168.124.0 members.add.10 Net-192.168.125.0 members.add.11 Net-192.168.126.0 members.add.12 Net-192.168.131.0 members.add.13 Net-192.168.134.0 -s id.txt

#mgmt_cli publish -s id.txt
mgmt_cli discard -s id.txt
mgmt_cli logout -s id.txt
