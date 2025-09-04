kubectl apply -f k8s/app1-deployment.yaml
kubectl apply -f k8s/app2-deployment.yaml




kubectl port-forward svc/app1-service 8001:8001



curl http://localhost:8001/
