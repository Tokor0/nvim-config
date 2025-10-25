{
  config.vim = {
    # Enable custom theming options
    theme.enable = true;

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
