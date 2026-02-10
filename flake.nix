{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
    home-manager.url = "github:nix-community/home-manager";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    inputs:
    let
      conf = ./configuration.nix;
    in
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = inputs.nixpkgs.lib.systems.flakeExposed;
      imports = [
        (inputs.import-tree ./modules)
      ];
      #perSystem =
      #  { pkgs, ... }:
      #  {
      #    packages.default =
      #      (inputs.nvf.lib.neovimConfiguration {
      #        pkgs = pkgs;
      #        modules = [ conf ];
      #      }).neovim;
      #  };
      #flake = {
      #  #nixosModules.default =
      #  #  { lib, ... }:
      #  #  {
      #  #    imports = [ inputs.nvf.nixosModules.default ];
      #  #    config = {
      #  #      programs.nvf.settings = lib.mkDefault (import conf).config;
      #  #    };
      #  #  };
      #  homeModules.default =
      #    { pkgs, lib, ... }:
      #    {
      #      imports = [ inputs.nvf.homeManagerModules.default ];
      #      config = {
      #        programs.nvf.settings = (import conf).config;
      #      };
      #    };
      #};
    };
}
