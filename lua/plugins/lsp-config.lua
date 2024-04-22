return {
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end,
	},

	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup {
				ensure_installed = { 'lua_ls', 'clangd', 'jdtls', 'tsserver', 'pyright', 'kotlin_language_server', 'html' },
			}
		end,
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require 'lspconfig'
			lspconfig.lua_ls.setup { capabilities = capabilities }
			lspconfig.clangd.setup { capabilities = capabilities }
			lspconfig.jdtls.setup { capabilities = capabilities }
			lspconfig.tsserver.setup { capabilities = capabilities }
			lspconfig.pyright.setup { capabilities = capabilities }
			lspconfig.kotlin_language_server.setup { capabilities = capabilities }
			lspconfig.html.setup { capabilities = capabilities }
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end,
	},
}
