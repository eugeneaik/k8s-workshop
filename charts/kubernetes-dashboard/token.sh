#!/usr/bin/env bash

echo Token:
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | awk '/^dashboard-kubernetes-dashboard-token-/{print $1}') | awk '$1=="token:"{print $2}'
