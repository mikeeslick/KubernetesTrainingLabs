#!/bin/bash

kubectl run --restart=Never --image=busybox static-obselete-pod --dry-run -o yaml --command -- sleep 1000 > /etc/kubernetes/manifests/static-obselete-pod.yaml

ssh root@node01 mkdir /etc/kubernetes/manifests

scp /etc/kubernetes/manifests/static-obselete-pod.yaml root@node01:/etc/kubernetes/manifests/