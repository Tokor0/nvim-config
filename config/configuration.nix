{
  config.vim = {
    # Enable custom theming options
    theme.enable = true;

    # Enable Treesitter
    treesitter = {
      enable = true;
      context.enable = true;
    };

    options = {
      tabstop = 2;
      shiftwidth = 0;
      expandtab = true;
    };

    statusline.lualine = {
      enable = true;
    };

    tabline.nvimBufferline.enable = true;

    filetree = {
      neo-tree.enable = true;
    };

    utility = {
      motion.leap = {
        enable = true;
      };
      surround.enable = true;
    };

    lsp = {
      enable = true;
      formatOnSave = true;
      lspkind.enable = true;
      otter-nvim.enable = true;
      nvim-docs-view.enable = true;
    };

    autopairs = {
      nvim-autopairs = {
        enable = true;
      };
    };

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

    autocomplete = {
      blink-cmp.enable = true;
    };

    snippets.luasnip.enable = true;

    notify = {
      nvim-notify.enable = true;
    };

    telescope.enable = true;

    ui = {
      noice.enable = true;
    };

    binds = {
      cheatsheet.enable = true;
      whichKey.enable = true;
    };
  };
}
