{
  config.vim = {
    treesitter = {
      enable = true;
      context.enable = true;
    };

    lsp = {
      enable = true;
      formatOnSave = true;
      lspkind.enable = true;
      otter-nvim.enable = true;
      nvim-docs-view.enable = true;
    };

    autocomplete = {
      blink-cmp.enable = true;
    };

    snippets.luasnip.enable = true;
  };
}
