{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = inputs@{ flake-parts, ...}: let
    conf = ./configuration.nix;
  in flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {

        packages.default = (inputs.nvf.lib.neovimConfiguration {
            pkgs = pkgs;
            modules = [ conf ];
          })
          .neovim;
          
      };
      flake = {
        nixosModules.default = { config, pkgs, lib, ... }: {
          imports = [ inputs.nvf.nixosModules.default ];
          config = {
            programs.nvf.settings = lib.mkDefault (import ./configuration.nix).config;
          };
        };
      };
    };
}
