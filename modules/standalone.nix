{ inputs, config, ... }:
{
  perSystem =
    {
      pkgs,
      ...
    }:
    {
      packages.default =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = pkgs;
          modules = [
            config.flake.nvf-config
          ];
        }).neovim;
    };
}
