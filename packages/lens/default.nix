{ nixpkgs, google-cloud-sdk, path, ... }:
let
  appimagePath = path + "/pkgs/build-support/appimage";

  buildFHSUserEnvBubblewrapAltered = import ./build_fhs_user_env.nix { inherit nixpkgs google-cloud-sdk; };
in nixpkgs.lens.override({
  appimageTools = nixpkgs.callPackage appimagePath {
    buildFHSUserEnv = buildFHSUserEnvBubblewrapAltered;
  };
})
