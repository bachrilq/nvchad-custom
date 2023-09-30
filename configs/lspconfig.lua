local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd","yamlls","gopls","tflint" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pylsp.setup{
    settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false
        }
      }
    }
  }
}

-- lspconfig.yamlls.setup {
  -- settings = {
  --   yaml = {
  --     schemas = {
  --       ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
  --       ["../path/relative/to/file.yml"] = "/.github/workflows/*",
  --       ["/path/from/root/of/project"] = "/.github/workflows/*",
  --     },
  --   },
  -- }
-- }
-- 
-- lspconfig.pyright.setup { blabla}
