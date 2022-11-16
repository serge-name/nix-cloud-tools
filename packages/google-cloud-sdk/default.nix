{ nixpkgs, ... }:
let
  sdk = nixpkgs.google-cloud-sdk;
in sdk.withExtraComponents ([
  sdk.components.gke-gcloud-auth-plugin
])
