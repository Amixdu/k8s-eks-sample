kubectl apply -f gateway/istio/micro-services/httpbin/httpbin.yaml
kubectl apply -f gateway/istio/micro-services/httpbin/namespace.yaml
kubectl apply -f gateway/istio/micro-services/httpbin/gateway.yaml
kubectl apply -f gateway/istio/micro-services/httpbin/httproute.yaml