return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.google_java_format,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.ktlint,
      },
    }
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}
