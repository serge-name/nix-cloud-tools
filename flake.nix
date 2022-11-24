{
  description = "My cloud tools";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    nixpkgs = inputs.nixpkgs.legacyPackages.${system};
  in {
    packages.${system} = {
      google-cloud-sdk = import ./packages/google-cloud-sdk { inherit nixpkgs; };
      lens = import ./packages/lens { inherit nixpkgs; };
    };
  };
}
