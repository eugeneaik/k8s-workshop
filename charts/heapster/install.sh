#/usr/bin/env bash
# https://github.com/kubernetes/heapster
echo
echo "Helm chart stable/heapster is installing..."
helm install --name heapster --namespace kube-system .

echo
helm ls