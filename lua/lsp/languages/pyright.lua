-- H -> lua/lsp/handles.lua
local H = require "lsp.handles"

return {
    on_attach = H.on_attach,
    capabilities = H.capabilities,
}