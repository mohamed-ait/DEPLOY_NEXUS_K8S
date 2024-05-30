#!/bin/bash

set -x

# create nfs storage class using helm 
bash deploy-nfs-helm.sh

# Create persistent volume claim 
kubectl apply -f persistent-volumeClaim.yaml

# create deployment 
kubectl apply -f deployment.yaml

# create service 
kubectl apply -f service.yaml