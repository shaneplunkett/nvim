return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      color_overrides = {
        mocha = {
          mantle = '#1e1e2e',
        },
      },
      custom_highlights = {},
      transparent_background = true,
      dim_inactive = {
        enabled = true,
      },
      default_integrations = true,
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        noice = true,
        notify = true,
        neotree = true,
        mason = false,
        fidget = true,
        treesitter = true,
        which_key = true,
        mini = { enabled = true, indentscope_color = 'base' },
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
