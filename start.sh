kind create cluster --config=k8s/kind.yaml --name=kinds
kubectl config use-context kind-kinds

kubectl apply -f k8s/configmap-env.yaml
kubectl apply -f k8s/configmap-family.yaml