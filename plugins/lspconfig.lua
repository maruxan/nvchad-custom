local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  -- lspservers with default config
  local servers = { "html", "cssls", "tsserver", "cssmodules_ls", "dockerls", "emmet_ls", "eslint", "jsonls",
    "tailwindcss", "terraformls", "tflint", "vimls", "yamlls" }

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
    }
  end
end

return M
