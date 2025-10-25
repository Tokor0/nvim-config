{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    home-manager.url = "github:nix-community/home-manager";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    let
      conf = ./configuration.nix;
    in
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.home-manager.flakeModules.home-manager
      ];
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      perSystem =
        { pkgs, ... }:
        {
          packages.default =
            (inputs.nvf.lib.neovimConfiguration {
              pkgs = pkgs;
              modules = [ conf ];
            }).neovim;
        };
      flake = {
        #nixosModules.default =
        #  { lib, ... }:
        #  {
        #    imports = [ inputs.nvf.nixosModules.default ];
        #    config = {
        #      programs.nvf.settings = lib.mkDefault (import conf).config;
        #    };
        #  };
        homeModules.default =
          { lib, ... }:
          {
            imports = [ inputs.nvf.homeManagerModules.default ];
            config = {
              programs.nvf.settings = (import conf).config;
            };
          };
      };
    };
}
