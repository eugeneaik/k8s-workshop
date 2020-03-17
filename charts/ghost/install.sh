#/usr/bin/env bash
# https://github.com/bitnami/bitnami-docker-ghost
echo
echo "Helm chart stable/ghost is installing..."
helm install --name blog -f values-local.yaml .

echo
helm ls