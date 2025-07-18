return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  cmd = "Neogit",
  keys = {
    {
      "<leader>gn",
      function()
        require("neogit").open()
      end,
      desc = "Neogit (Floating Window)",
    },
  },
  opts = {
    kind = "floating", -- <-- here: opens Neogit in a floating window
    signs = {
      section = { "", "" },
      item = { "", "" },
      hunk = { "", "" },
    },
    integrations = {
      diffview = true,
      telescope = true,
    },
    commit_popup = {
      kind = "floating",
    },
    disable_commit_confirmation = false,
    remember_settings = true,
    use_magit_keybindings = true,
  },
  config = function(_, opts)
    require("neogit").setup(opts)
  end,
}
