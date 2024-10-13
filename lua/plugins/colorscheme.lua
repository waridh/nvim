return {
  -- add gruvbox
  { "catppuccin/nvim", opts = {
    flavour = "mocha",
  } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
