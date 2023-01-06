local rt = require "rust-tools"
local H = require "lsp.handles"

rt.setup({
  server = {
    -- on_attach = function(_, bufnr)
    --   -- Hover actions
    --   vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
    --   -- Code action groups
    --   vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    -- end,
    on_attach = H.on_attach,
    capabilities = H.capabilities,
  },
})

-- Set inlay hints for the current buffer
rt.inlay_hints.set()

-- Enable inlay hints auto update and set them for all the buffers
rt.inlay_hints.enable()
