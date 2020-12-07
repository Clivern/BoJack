<p align="center">
    <img alt="Logo" src="https://istio.io/latest/img/istio-bluelogo-whitebackground-unframed.svg" width="150" />
    <h3 align="center">Learning Istio</h3>
</p>
<br/>


## Getting Started

Provision k8s cluster and wait untill it is up & ready.

```
$ export KUBECONFIG=$(find ~/configs/*kubeconfig.yaml -type f | tr "\n" ":")
$ kubectl get nodes
```

## Install Nginx Ingress

```
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.0/deploy/static/provider/cloud/deploy.yaml

$ kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx --watch

$ kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx

$ kubectl get svc --namespace=ingress-nginx
```