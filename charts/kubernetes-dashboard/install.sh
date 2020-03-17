#/usr/bin/env bash
# https://github.com/kubernetes/dashboard
echo
echo "Helm chart stable/kubernetes-dashboard is installing..."
helm install --name dashboard -f values-local.yaml --namespace kube-system .

echo
helm ls