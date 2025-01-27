return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'tsx',
        'typescript',
        'javascript',
        'html',
        'css',
        'vue',
        'astro',
        'svelte',
        'gitcommit',
        'graphql',
        'json',
        'json5',
        'lua',
        'markdown',
        'prisma',
        'vim',
        'go',
        'python',
      },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
    },
    config = function(_, opts)
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
