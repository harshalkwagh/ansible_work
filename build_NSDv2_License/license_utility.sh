#!/bin/bash

if [ $1 == "post" ]; then
    curl -i -H "Accept: application/json" -X POST -d @$3 http://$2:80/nsd_licenses
elif [ $1 == "get" ]; then
    curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://$2:80/nsd_licenses
fi
