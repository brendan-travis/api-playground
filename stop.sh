#!/bin/bash
kubectl delete -f infrastructure/api.manifest.yaml

docker stop registry
docker rm registry