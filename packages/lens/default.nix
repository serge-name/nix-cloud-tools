{ nixpkgs, google-cloud-sdk, path, ... }:
let
  appimagePath = path + "/pkgs/build-support/appimage";

  buildFHSUserEnvBubblewrapAltered = import ./appimage_tools.nix { inherit nixpkgs google-cloud-sdk; };
in nixpkgs.lens.override({
  appimageTools = nixpkgs.callPackage appimagePath {
    buildFHSUserEnv = buildFHSUserEnvBubblewrapAltered;
  };
})
