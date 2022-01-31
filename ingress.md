<p align="center">
    <img alt="Logo" src="/logo.png?v=1" width="300" />
    <h3 align="center">Learning Istio</h3>
</p>
<br/>
<br/>


- Install `nginx` ingress. for a list of supported versions list, [please check this table](https://github.com/kubernetes/ingress-nginx#support-versions-table)

```zsh
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.0/deploy/static/provider/cloud/deploy.yaml

$ kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx --watch

$ kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx

$ kubectl get svc --namespace=ingress-nginx
```

- Run the sample application

```zsh
$ kubectl apply -f kubernetes/mammal_with_nginx_ingress.yaml
```

- Get the Nginx Ingress external IP address `X.X.X.X` and update the hosts file to send `test.com` to that IP.

```
$ kubectl get svc --namespace=ingress-nginx

NAME                                 TYPE           CLUSTER-IP       EXTERNAL-IP       PORT(S)                      AGE
ingress-nginx-controller             LoadBalancer   Y.Y.Y.Y          X.X.X.X           80:31783/TCP,443:32756/TCP   16m
ingress-nginx-controller-admission   ClusterIP      U.U.U.U          <none>            443/TCP                      16m
```

- Call the sample application `mammal`

```zsh
$ curl test.com/mammal/_health -v

*   Trying X.X.X.X:80...
* Connected to test.com (X.X.X.X) port 80 (#0)
> GET /mammal/_health HTTP/1.1
> Host: test.com
> User-Agent: curl/7.79.1
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Date: Mon, 01 Aug 2022 23:30:22 GMT
< Content-Type: application/json; charset=UTF-8
< Content-Length: 21
< Connection: keep-alive
< X-Request-Id: eaf6f788f04656e41dd052f3521e824b
<

{"status":"i am ok"}
```