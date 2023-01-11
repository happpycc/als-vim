vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  --
  -- When the status is INSERT, it also will be updated
  update_in_insert = true,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
