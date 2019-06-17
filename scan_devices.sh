#!/bin/bash

YML_STRING="version: '3'\n\nservices:\n  nerves:\n    devices:\n"

for dev_name in `ls /dev/sd*`; do
    YML_STRING="${YML_STRING}      - ${dev_name}:${dev_name}\n"
done
echo -e "${YML_STRING}" > docker-compose-nerves-devices.yml
