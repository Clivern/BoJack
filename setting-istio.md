<p align="center">
    <img alt="Logo" src="https://istio.io/latest/img/istio-bluelogo-whitebackground-unframed.svg" width="150" />
    <h3 align="center">Learning Istio</h3>
</p>
<br/>
<br/>

- Go to the `Istio` release page to download the installation file for your `OS` (`Linux` or `macOS`):

```zsh
$ curl -L https://istio.io/downloadIstio | sh -
$ cd istio-1.14.2
```
- Then add `istioctl` to your `PATH`.

- For this installation, we use the `demo` configuration profile. It’s selected to have a good set of defaults for testing, but there are other profiles for production or performance testing.

```zsh
$ istioctl install --set profile=demo -y
```

- Add a namespace label to instruct `Istio` to automatically inject `Envoy` sidecar proxies when you deploy your application later:

```zsh
$ kubectl label namespace default istio-injection=enabled
```

---

References:

- [Istio Getting Started](https://istio.io/latest/docs/setup/getting-started/)
