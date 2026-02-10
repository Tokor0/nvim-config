{
  flake.nvf-config.config.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
      lspkind.enable = true;
      otter-nvim.enable = true;
      nvim-docs-view.enable = true;
    };

    diagnostics = {
      enable = true;
    };

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix = {
        enable = true;
        lsp.servers = [ "nixd" ];
        format.type = [ "nixfmt" ];
      };

      typst = {
        enable = true;
        format.type = [ "typstyle" ];
        extensions.typst-preview-nvim.setupOpts = {
          open_cmd = "firefox %s -P typst-preview";
        };
      };

      python = {
        enable = true;
        lsp.servers = [ "pyright" ];
      };

      bash.enable = true;
      clang.enable = true;
      json.enable = true;
      lua.enable = true;
      markdown.enable = true;
      qml.enable = true;
      rust.enable = true;
      yaml.enable = true;
    };
  };
}
