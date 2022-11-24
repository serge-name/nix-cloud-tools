{ nixpkgs, ... }:
let
  inherit (nixpkgs) lens callPackage;
  google-cloud-sdk = import ../google-cloud-sdk { inherit nixpkgs; };
  appimagePath = nixpkgs.path + "/pkgs/build-support/appimage";

  buildFHSUserEnvBubblewrapAltered = import ./build_fhs_user_env.nix { inherit nixpkgs google-cloud-sdk; };
in lens.override({
  appimageTools = callPackage appimagePath {
    buildFHSUserEnv = buildFHSUserEnvBubblewrapAltered;
  };
})
