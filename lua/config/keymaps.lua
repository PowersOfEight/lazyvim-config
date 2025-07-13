-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jdtls
local dap = require("dap")

vim.keymap.set("n", "<F5>", dap.continue, { desc = "Start/Continue Debug" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step Over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step Into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Step Out" })
vim.keymap.set("n", "<Leader>B", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
-- vim.keymap.set("n", "<Leader>B", function()
-- dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
-- end, { desc = "Conditional Breakpoint" })
-- END OF jdtls
