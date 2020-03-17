#/usr/bin/env bash
# https://github.com/kubernetes-incubator/external-dns
echo
echo "Applying Route53 policy..."
aws iam put-role-policy --role-name nodes.aikashev.tk --policy-name nodes.route53 --policy-document file://nodes.route53.json

echo
echo "Helm chart stable/external-dns is installing..."
helm install --name dns -f values-local.yaml --namespace kube-system .

echo
helm ls