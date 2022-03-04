# K8s Kinds

Este repositório foi criado com o propósito de aprender e de testar os tipos de objetos do Kubernetes mais utilizados.
Conteúdo estudado até o momento:
- Origem
- Pontos Importantes
- Trabalhando com Pods
- ReplicaSet
- Rollout e Revisões em Pods
- Services
- Cluster IP
- Node Port
- Load Balancer
- Proxy Reverso
- Objetos de configuração
  - Variáveis de Ambiente
  - Injeção de ConfigMap
  - Secrets
- Probes
  - Liveness
  - Readiness
  - Startup
- Resources e HPA
  - Request
  - Limits
- HPA (Horizontal Pod Autoscaling)
- Statefulsets e volumes persistentes

Testei localmente utilizando kind
```
kind create cluster --config k8s/kind.yaml
```

Ordem dos apply: metric-server, secret, configmap-env, configmap-family, deployment, service, hpa.

Comando para teste de stress utilizando Fortio
```
kubectl run -it fortio --rm --image=fortio/fortio -- load -qps 800 -t 120s -c 70 "http://goserver-service/healthz"
```