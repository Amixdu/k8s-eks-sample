kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin/nginx.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin/httpbin.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin/namespace.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin/gateway.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin/httproute.yaml