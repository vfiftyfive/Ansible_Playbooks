#!/usr/bin/env bash

. export_govc_env.sh
vmlist="ACI-kube-master ACI-kube-worker-01 ACI-kube-worker-02"

for vm in $vmlist; do 
  govc vm.clone -customization=ubuntu $vm
done


