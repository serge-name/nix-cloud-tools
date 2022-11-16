# nix-cloud-tools

Here is a collection of cloud tools modified for my own needs

```shell
nix registry add mycloud github:serge-name/nix-cloud-tools
nix profile install mycloud#google-cloud-sdk
nix profile install mycloud#lens
```

## google-cloud-sdk

* Added `gke-gcloud-auth-plugin` component

## lens

* Use fresh Google Cloud SDK instead of vendored one.
* Allow to use HTTP(S) proxy
* Make `extensions` folder writable (it becomes read-only for an unknown reason)
* Restrict access to home directory (WIP)
