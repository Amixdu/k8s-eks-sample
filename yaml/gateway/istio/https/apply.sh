kubectl apply -f gateway/istio/https/nginx.yaml
kubectl apply -f gateway/istio/https/httpbin.yaml
kubectl apply -f gateway/istio/https/namespace.yaml
kubectl apply -f gateway/istio/https/gateway.yaml
kubectl apply -f gateway/istio/https/cert-manager.yaml
sleep 10
kubectl apply -f gateway/istio/https/cert-issuer-staging.yaml
kubectl apply -f gateway/istio/https/cert-issuer-prod.yaml
kubectl apply -f gateway/istio/https/httproute.yaml
kubectl apply -f gateway/istio/https/httproute2.yaml
kubectl apply -f gateway/istio/https/redirect_httproute.yaml