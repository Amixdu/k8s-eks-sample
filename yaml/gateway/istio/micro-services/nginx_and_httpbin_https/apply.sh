kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/nginx.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/httpbin.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/namespace.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/gateway.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/cert-manager.yaml
sleep 10
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/cert-issuer-staging.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/cert-issuer-prod.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/httproute.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/httproute2.yaml
kubectl apply -f gateway/istio/micro-services/nginx_and_httpbin_https/redirect_httproute.yaml