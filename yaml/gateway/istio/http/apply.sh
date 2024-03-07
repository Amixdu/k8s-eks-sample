kubectl apply -f gateway/istio/http/nginx.yaml
kubectl apply -f gateway/istio/http/httpbin.yaml
kubectl apply -f gateway/istio/http/namespace.yaml
kubectl apply -f gateway/istio/http/gateway.yaml
kubectl apply -f gateway/istio/http/httproute.yaml
kubectl apply -f gateway/istio/http/httproute2.yaml