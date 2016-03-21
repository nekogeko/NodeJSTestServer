#!/bin/bash
result=$(curl -s -I http:// localhost:8080)
if [[ "$result" == *"200 OK"* ]]; then
  echo "Deployment is a success"
  exit 0
else
  echo "Deployment failed"
  exit 1
fi
