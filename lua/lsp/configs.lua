-----------------------------------------------------------
-- Configs for nvim-lsp-installer
-----------------------------------------------------------

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local lspconfig = require("lspconfig")

-- Default active jsonls and lua
local servers = { "jsonls", "sumneko_lua", "gopls"}

lsp_installer.setup {
	ensure_installed = servers
}

local handlers = require('lsp.handlers')
local settingsPkg = 'lsp.settings.'

-- Setup serveres
for _, server in pairs(servers) do
	local opts = {
		on_attach = handlers.on_attach,
		capabilities = handlers.capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, settingsPkg .. server)
	if has_custom_opts then
	 	opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end
  -- For every server, use same attach
	lspconfig[server].setup(opts)
end

