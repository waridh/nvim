return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", "eldritch-theme/eldritch.nvim", "fedepujol/cosmos.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cosmos",
    },
  },
}
