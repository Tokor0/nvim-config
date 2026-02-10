{ inputs, ... }:
{
  imports = [
    inputs.home-manager.flakeModules.home-manager
    inputs.flake-parts.flakeModules.modules
  ];
  flake.modules.homeManager.default =
    { inputs, config, ... }:
    {
      imports = [
        inputs.nvf.homeManagerModules.default
      ];
      programs.nvf.settings = (import config.flake.nvf-config).config;
    };
}
