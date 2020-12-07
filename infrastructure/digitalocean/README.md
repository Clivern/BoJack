<p align="center">
    <img alt="Logo" src="https://istio.io/latest/img/istio-bluelogo-whitebackground-unframed.svg" width="200" />
    <h3 align="center">Learning Istio</h3>
</p>
<br/>


- Create `terraform.tfvars` and define required vars.

```zsh
do_token = ""
region = "ams3"
cluster_name = "clivern"
cluster_version = "1.23.9-do.0"
node_count = 2
droplet_size = "s-1vcpu-2gb"
```

- Create a digitalocean token from digitalocean dashboard and then run `make init`.

- Run `make plan` to check the changes.

- Run `make apply` to perform the action.

- Download `kubeconfig.yml` file from the [digitalocean dashboard](https://cloud.digitalocean.com/kubernetes/clusters).

- Define the kubectl config file path.

```zsh
$ export KUBECONFIG=/path/to/kubeconfig.yml
```

- Check if the kubernetes cluster is up and running.

```zsh
$ kubectl get nodes

NAME                 STATUS   ROLES    AGE     VERSION
clivern-pool-c98f3   Ready    <none>   5m40s   v1.23.9
clivern-pool-c98f8   Ready    <none>   5m38s   v1.23.9

$ kubectl cluster-info

Kubernetes control plane is running at https://5e2f936f-71e1-42c0-86d4-22ba47b2db69.k8s.ondigitalocean.com
CoreDNS is running at https://5e2f936f-71e1-42c0-86d4-22ba47b2db69.k8s.ondigitalocean.com/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
