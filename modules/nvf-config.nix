{ lib, ... }:
{
  options.flake.nvf-config = lib.mkOption {
    type = lib.types.deferredModule;
  };
}
