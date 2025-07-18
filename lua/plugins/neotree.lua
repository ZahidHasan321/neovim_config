return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = opts.window or {}
    opts.window.position = "float"
    opts.window.popup = {
      size = {
        height = "80%",
        width = "60%",
      },
      position = "50%",
    }

    -- Float preview window
    opts.window.mappings = opts.window.mappings or {}
    opts.window.mappings["P"] = {
      "toggle_preview",
      config = { use_float = true },
    }
  end,
}
