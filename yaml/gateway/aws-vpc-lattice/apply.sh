kubectl apply -f gateway/aws-vpc-lattice/namespace.yaml

eksctl create iamserviceaccount \
   --cluster=par-cluster \
   --namespace=aws-application-networking-system \
   --name=gateway-api-controller \
   --attach-policy-arn=arn:aws:iam::128427875801:policy/VPCLatticeControllerIAMPolicy \
   --override-existing-serviceaccounts \
   --region us-east-2 \
   --approve
   
kubectl apply -f gateway/aws-vpc-lattice/gateway-controller.yaml
kubectl apply -f gateway/aws-vpc-lattice/gatewayclass.yaml
kubectl apply -f gateway/aws-vpc-lattice/gateway.yaml
kubectl apply -f gateway/aws-vpc-lattice/httproute.yaml
kubectl apply -f gateway/aws-vpc-lattice/nginx.yaml


