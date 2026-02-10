{
  flake.nvf-config.config.vim = {
    statusline.lualine = {
      enable = true;
    };

    tabline.nvimBufferline.enable = true;

    filetree = {
      neo-tree.enable = true;
    };

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
