require("user.lazy_init")
require("lazy").setup({
	-- Plugin Specs:
	'nvim-treesitter/nvim-treesitter',	-- Syntax & Highlighting
	'neovim/nvim-lspconfig',		-- LSP
	'williamboman/mason.nvim',		-- LSP Installer
	'hrsh7th/nvim-cmp',			-- Completion Engine
	'L3MON4D3/LuaSnip',			-- Snippets
	'nvim-lualine/lualine.nvim',		-- Status Line
	'nvim-telescope/telescope.nvim',	-- Fuzzy Finder
  'folke/tokyonight.nvim',        -- Themeing
})
-- User Settings
require("user.set")				-- Nvim Settings
require("user.remap")				-- Keybindings

-- Treesitter Config
require("nvim-treesitter.configs").setup{
	ensure_installed = {"lua", "cpp", "asm", "python"},
	highlight = { enable = true },
}
-- Other Plugins
require("lualine").setup()
require("mason").setup()
require("lspconfig").pyright.setup{}
