local M = {
    status = true
}

local status, mason = pcall(require, "mason")
if not status then
    vim.notify("mason not found")
    M[status] = status
  return M
end

local status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
    vim.notify("mason not found")
    M[status] = status
  return M
end

local mason_opts = {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}

function M.install_language_server(servers)
    mason.setup(mason_opts)
    mason_lspconfig.setup({
        ensure_installed = servers,
        automatic_installation = true,
    })
end

return M