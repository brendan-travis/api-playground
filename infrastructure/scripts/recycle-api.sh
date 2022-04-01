#!/bin/bash
kubectl scale deployment api-playground --replicas=0
kubectl scale deployment api-playground --replicas=1