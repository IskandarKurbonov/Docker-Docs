#!/bin/bash

# Run test environment
for config in ${config[@]}; do
  # Check if the yml exists
  if [[ ! -f ./tests/${config} ]]; then
    echo "File ${config} doesn't exist!"
    exit 0
  fi
  docker compose -p ds -f ./tests/${config} up -d
  sleep 10
  docker ps -a
done

url=${url:-"http://localhost"}

wakeup_timeout=60

# Get Docs healthcheck status
echo "Wait for service wake up"

sleep $wakeup_timeout

healthcheck_res=$(wget --no-check-certificate -qO - ${url}/healthcheck)

# Fail if it isn't true
if [[ $healthcheck_res == "true" ]]; then
  echo "Healthcheck passed."
else
  echo "Healthcheck failed!"
  exit 1
fi

# echo "============================="
# echo "   Delete Docker Processes   "
# echo "============================="
# docker rm -f $(docker ps -aq)
# sleep 5
# echo "============================="
# echo "     Processes is delete     "
# echo "============================="
# echo "   Delete Docker Images      "
# echo "============================="
# docker rmi -f $(docker images -aq)
# sleep 5
# echo "============================="
# echo "      Images is delete       "
# echo "============================="
# echo "    Delete Docker Volumes    "
# echo "============================="
# sleep 5
# docker volume rm -f $(docker volume ls)
# echo "    Volumes is delete        "

