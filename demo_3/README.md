# Introduciton

This is totally untested

## Commands

show objects in.0 text in.1 192.168.0 details-level full

mgmt_cli show objects in.0 text in.1 192.168.0.1  -r true --format json| $CPDIR/jq/jq ".objects[] | .name"
