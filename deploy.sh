#!/bin/bash

set -x

# Create persistent volume claim 
kubectl apply -f persistent-volumeClaim.yaml

# create deployment 
kubectl apply -f deployment.yaml

# create service 
kubectl apply -f service.yaml