-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  require("user.config")
else
  require("config.lazy")
end
