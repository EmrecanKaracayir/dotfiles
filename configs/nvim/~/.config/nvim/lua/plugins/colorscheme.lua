return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "auto",
      background = { light = "latte", dark = "mocha" },
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- Not "catppuccin": Neovim 0.12 ships a built-in colorscheme with that name.
      colorscheme = "catppuccin-nvim",
    },
  },
}
