local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require"nicorithner.lsp.lsp-installer"
require("nicorithner.lsp.handlers").setup()
require "nicorithner.lsp.null-ls"
