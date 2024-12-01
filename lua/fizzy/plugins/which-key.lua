return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Your configuration goes here
  },
  config = function(_, opts)
    require("which-key").setup(opts)
    local wk = require("which-key")

    -- Add your mappings
    wk.add({
      { "<leader>s", group = "Split screen" },
      { "<leader>c", group = "Code Actions" },
      { "<leader>e", group = "Explorer" },
      { "<leader>f", group = "Find" },
      { "<leader>m", group = "Formater" },
      { "<leader>r", group = "LSP Rename" },
      { "<leader>t", group = "Tabs" },
      { "<leader>w", group = "Restore Session" },
      { "<leader>x", group = "Diagnostics" },
      { "<leader>h", group = "Harpoon" },
      { "<leader>g", group = "Git Signs" },
    })
  end,
}
