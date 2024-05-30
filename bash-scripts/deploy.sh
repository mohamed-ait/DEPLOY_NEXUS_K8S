#!/bin/bash

set -x

# create nfs storage class using helm 
bash ./deploy-nfs-helm.sh

# Create persistent volume claim 
kubectl apply -f ../kube-manifests/persistent-volumeClaim.yaml

# create deployment 
kubectl apply -f ../kube-manifests/deployment.yaml

# create service 
kubectl apply -f ../kube-manifests/service.yaml