vim.diagnostic.config({
  virtual_text = false,
})
vim.diagnostic.config({ virtual_lines = true })
vim.keymap.set(
  "",
  "<A-L>",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)
local virtual_lines_enabled = true
vim.keymap.set('n', '<leader>lt', '', {
    callback = function()
        virtual_lines_enabled = not virtual_lines_enabled
        vim.diagnostic.config({ virtual_lines = virtual_lines_enabled, virtual_text = not virtual_lines_enabled })
    end,
})
