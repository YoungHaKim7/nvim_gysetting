require "user.lsp.languages.rust"
-- require"user.lsp.languages.golang"
-- require "user.lsp.languages.sh"
-- require"user.lsp.languages.js-ts"

-- vim.list_extend(nvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer", "gopls", "bashls", "tsserver" })
if vim.lsp.inlay_hint then
  vim.lsp.inlay_hint.enable(0, true)
end
