#!/usr/bin/env bash

# helm install --name dns -f values-local.yaml --namespace kube-system .
cd external-dns
./install.sh
cd ..

# helm install --name cert -f values-local.yaml --namespace kube-system .
cd kube-lego
./install.sh
cd ..

# helm install --name ingress -f values-local.yaml --namespace kube-system .
cd nginx-ingress
./install.sh
cd ..

# helm install --name heapster --namespace kube-system .
cd heapster
./install.sh
cd ..

# helm install --name dashboard -f values-local.yaml --namespace kube-system .
cd kubernetes-dashboard
./install.sh
cd ..

# helm install --name monitoring -f values-local.yaml .
cd prometheus-operator
./install.sh
cd ..

# helm install --name blog -f values-local.yaml .
cd ghost
./install.sh
cd ..
