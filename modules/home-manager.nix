{ inputs, self, ... }:
{
  imports = [
    inputs.home-manager.flakeModules.home-manager
    inputs.flake-parts.flakeModules.modules
  ];
  flake.modules.homeManager.default =
    #{ config, ... }:
    {
      imports = [ inputs.nvf.homeManagerModules.default ];
      programs.nvf.settings = (import self.flake.nvf-config).config;
    };
}
