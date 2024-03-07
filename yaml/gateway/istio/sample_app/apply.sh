kubectl apply -f gateway/istio/sample_app/httpbin.yaml
kubectl apply -f gateway/istio/sample_app/namespace.yaml
kubectl apply -f gateway/istio/sample_app/gateway.yaml
kubectl apply -f gateway/istio/sample_app/httproute.yaml