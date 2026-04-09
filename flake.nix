{
  description = "InfyniteHeap's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixos-wsl,
    ...
  }: let
    mkSystemConfiguration = specificModules:
      nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules =
          [
            ./modules/system/users.nix
            ./modules/system/packages.nix
          ]
          ++ specificModules;
      };
  in {
    nixosConfigurations = {
      desktop = mkSystemConfiguration [
        ./hosts/desktop/configuration.nix
      ];

      laptop = mkSystemConfiguration [
        ./hosts/laptop/configuration.nix
      ];

      wsl = mkSystemConfiguration [
        nixos-wsl.nixosModules.default
        ./hosts/wsl/configuration.nix
      ];
    };
  };
}
