<p align="center">
    <img alt="Logo" src="https://istio.io/latest/img/istio-bluelogo-whitebackground-unframed.svg" width="150" />
    <h3 align="center">Learning Istio</h3>
</p>
<br/>

- Install `nginx` ingress. for a list of supported versions list, [please check this table](https://github.com/kubernetes/ingress-nginx#support-versions-table)

```zsh
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.0/deploy/static/provider/cloud/deploy.yaml

$ kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx --watch

$ kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx

$ kubectl get svc --namespace=ingress-nginx
```

- Go to the Istio release page to download the installation file for your OS, or download and extract the latest release automatically (Linux or macOS):

```zsh
$ curl -L https://istio.io/downloadIstio | sh -
$ cd istio-1.14.2
```

- For this installation, we use the `demo` configuration profile. It’s selected to have a good set of defaults for testing, but there are other profiles for production or performance testing.

```zsh
$ istioctl install --set profile=demo -y
```

- Add a namespace label to instruct Istio to automatically inject Envoy sidecar proxies when you deploy your application later:

```zsh
$ kubectl label namespace default istio-injection=enabled
```

References:

- [Istio Getting Started](https://istio.io/latest/docs/setup/getting-started/)
