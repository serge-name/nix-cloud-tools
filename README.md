# nix-cloud-tools

Here is a collection of cloud tools modified for my own needs

## google-cloud-sdk

* Added `gke-gcloud-auth-plugin` component

## lens

* Use fresh Google Cloud SDK instead of vendored one.
* Allow to use HTTP(S) proxy
* Make `extensions` folder writable (it becomes read-only for an unknown reason)
* Restrict access to home directory (WIP)
