# create a kind cluster
kind create cluster --name test
# =====================================================================
# test the cluster
kind get clusters
kubectl cluster-info --context kind-test
# =====================================================================
# From kubernetes_local/
# these commands are to build the docker images
docker build -t fastapi-app1:1 ./app1
docker build -t fastapi-app2:1 ./app2
# =====================================================================
# Load into kind with proper name
kind load docker-image fastapi-app1:1 --name test
kind load docker-image fastapi-app2:1 --name test
# =====================================================================
# apply the k8s manifests rom kubernetes_local/
kubectl apply -f k8s/app1-deployment.yaml
kubectl apply -f k8s/app2-deployment.yaml
# =====================================================================
# check the pods
kubectl get pods
# =====================================================================
# port forward and test locally or with public ip address or through curl command
kubectl port-forward svc/app1-service 8001:8001
kubectl port-forward svc/app2-service 8002:8002


