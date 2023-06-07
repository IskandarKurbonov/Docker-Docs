#!/bin/bash


healthcheck_res=$(curl localhost/healthcheck)

if [[ $healthcheck_res == "true" ]]; then
    echo "Healthcheck passed."
else
    echo "Healthcheck failed!"
    exit 1
fi