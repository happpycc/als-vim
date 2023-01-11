local status, lspconfig = pcall(require, "lspconfig")
if not status then
    vim.notify("lspconfig not found")
  return
end

-- M -> lua/lsp/mason.lua
local M = require "lsp.mason"
if not M.status then
  return
end

local servers = {
  "sumneko_lua",
  "pyright",
  "tsserver",
}

M.install_language_server(servers)

-- H -> lua/lsp/handles.lua
local H = require "lsp.handles"

for _, server in pairs(servers) do
  local status, opts = pcall(require, "lsp.languages." .. server)
  if not status then
    lspconfig[server].setup({
      on_attach = H.on_attach,
      capabilities = H.capabilities,
    })
  else
    lspconfig[server].setup(opts)
  end
end
