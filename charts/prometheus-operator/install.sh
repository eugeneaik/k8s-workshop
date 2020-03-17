#/usr/bin/env bash
# https://github.com/coreos/prometheus-operator
echo
echo "Helm chart stable/prometheus-operator is installing..."
kubectl create namespace monitoring
helm install --name monitoring -f values-local.yaml --namespace monitoring .

echo
helm ls