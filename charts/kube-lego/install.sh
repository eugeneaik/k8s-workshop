#/usr/bin/env bash
# https://github.com/jetstack/kube-lego

echo
echo "Helm chart stable/kube-lego is installing..."
helm install --name cert -f values-local.yaml --namespace kube-system .

echo
helm ls