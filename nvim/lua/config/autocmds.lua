-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.api.nvim_create_augroup("markdown_settings", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "markdown_settings",
  pattern = { "markdown", "md" },
  callback = function()
    vim.b.minipairs_disable = true
  end,
})
