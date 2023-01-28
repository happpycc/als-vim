local status, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status then
  vim.notify("nvim-treesitter not found")
  return
end

treesitter_configs.setup {
  ensure_installed = { "c", "lua", "rust", "javascript", "typescript" },
  sync_install = true,
  auto_install = true,
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = function(lang, buf)
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
}
