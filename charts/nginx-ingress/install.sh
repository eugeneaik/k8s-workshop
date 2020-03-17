#/usr/bin/env bash
# https://github.com/kubernetes/ingress-nginx
echo
echo "Helm chart stable/nginx-ingress is installing..."
helm install --name ingress -f values-local.yaml --namespace kube-system .

echo
helm ls