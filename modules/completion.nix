{
  flake.nvf-config.config.vim = {
    treesitter = {
      enable = true;
      context.enable = true;
    };

    autocomplete = {
      blink-cmp.enable = true;
    };

    snippets.luasnip.enable = true;

    autopairs.nvim-autopairs.enable = true;
  };
}
