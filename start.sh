#!/bin/bash
./infrastructure/scripts/build-api.sh
./infrastructure/scripts/deploy-api.sh
./infrastructure/scripts/deploy-ingress.sh
