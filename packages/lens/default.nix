{ nixpkgs, ... }:
let
  google-cloud-sdk = import ../google-cloud-sdk { inherit nixpkgs; };
  appimagePath = nixpkgs.path + "/pkgs/build-support/appimage";

  buildFHSUserEnvBubblewrapAltered = import ./build_fhs_user_env.nix { inherit nixpkgs google-cloud-sdk; };
in nixpkgs.lens.override({
  appimageTools = nixpkgs.callPackage appimagePath {
    buildFHSUserEnv = buildFHSUserEnvBubblewrapAltered;
  };
})
