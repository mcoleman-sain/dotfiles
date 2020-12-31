{
  description = "A very flaky system config.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.09";
    nixpkgs-unstable.url = "nixpkgs/master";
    home-manager.url = "github:nix-community/home-manager/release-20.09";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, home-manager, ... }:
    with nixpkgs.lib;
    let
      mkNixosConf = host: profile:
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            home-manager.nixosModules.home-manager
            host
            profile
          ];
          specialArgs = { inherit inputs; };
        };
    in {
      nixosConfigurations = listToAttrs (crossLists (h: p: { name = "${toLower (removeSuffix ".nix" (baseNameOf h))}-${toLower (removeSuffix ".nix" (baseNameOf p))}"; value = mkNixosConf h p; }) [ (listModules ./hosts) (listModules ./profiles) ]);
    };
}
