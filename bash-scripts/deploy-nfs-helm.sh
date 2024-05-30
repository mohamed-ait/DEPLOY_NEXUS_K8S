#!/bin/bash 

#Prerequisits : 
# helm should be installed 

# Add Helm Repository for nfs-subdir-external-provisioner
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner

# Install Helm Chart for NFS

helm install nfs-subdir-external-provisioner \
nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--set nfs.server=nfs-host-ip \
--set nfs.path=/data/nfs \
--set storageClass.onDelete=true