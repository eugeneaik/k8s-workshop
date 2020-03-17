#/usr/bin/env bash

kubectl -n kube-system delete secret dashboard-kubernetes-dashboard
kubectl create secret generic dashboard-kubernetes-dashboard --from-file=certs -n kube-system
kubectl -n kube-system delete pods -l release=dashboard
sleep 5
echo
kubectl -n kube-system get pods -l release=dashboard
