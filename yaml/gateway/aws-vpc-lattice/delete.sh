TIMEOUT=60

kubectl delete -f gateway/aws-vpc-lattice/nginx.yaml
if timeout $TIMEOUT bash -c "kubectl delete -f gateway/aws-vpc-lattice/httproute.yaml"; then
  
  kubectl delete -f gateway/aws-vpc-lattice/gateway.yaml
  kubectl delete -f gateway/aws-vpc-lattice/gatewayclass.yaml
  kubectl delete -f gateway/aws-vpc-lattice/gateway-controller.yaml

  eksctl delete iamserviceaccount gateway-api-controller --cluster=par-cluster --namespace=aws-application-networking-system

  kubectl delete -f gateway/aws-vpc-lattice/namespace.yaml
else
  kubectl patch httproute nginx-route --type json --patch='[ { "op": "remove", "path": "/metadata/finalizers" } ]'
fi


