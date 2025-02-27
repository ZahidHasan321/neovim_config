-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
return {
  vim.cmd("cnoreabbrev c %y+"),
  vim.cmd("cnoreabbrev r CompetiTest run"),
  vim.cmd("cnoreabbrev rp CompetiTest receive problem"),
  vim.cmd("cnoreabbrev rc CompetiTest receive contest"),
  vim.cmd("cnoreabbrev at CompetiTest add_testcase"),
  vim.cmd("cnoreabbrev et CompetiTest edit_testcase"),
}
