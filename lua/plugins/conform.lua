return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        css = { { 'prettied', 'prettier' } },
        graphql = { { 'prettied', 'prettier' } },
        html = { { 'prettied', 'prettier' } },
        javascript = { { 'prettied', 'prettier' } },
        javascriptreact = { { 'prettied', 'prettier' } },
        json = { { 'prettied', 'prettier' } },
        lua = { 'stylua' },
        markdown = { { 'prettied', 'prettier' } },
        sql = { 'sql-formatter' },
        svelte = { { 'prettied', 'prettier' } },
        typescript = { { 'prettied', 'prettier', 'sql-formatter' } },
        typescriptreact = { { 'prettied', 'prettier' } },
        yaml = { 'prettier' },
        xml = { 'xmlformatter' },
        python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },
        go = { 'goimports-reviser', 'gofumpt', 'golines' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
