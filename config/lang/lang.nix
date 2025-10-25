{
  config.vim = {

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix = {
        enable = true;
        lsp.server = "nixd";
        format.type = "nixfmt";
      };
      rust = {
        enable = true;
      };
      typst = {
        enable = true;
        format.type = "typstyle";
        extensions.typst-preview-nvim.setupOpts = {
          open_cmd = "firefox %s -P typst-preview";
        };
      };
      python = {
        enable = true;
        lsp.server = "pyright";
      };
    };
  };
}
