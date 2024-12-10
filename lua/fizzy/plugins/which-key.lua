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
      { "<leader>c", group = "Code Actions" },
      { "<leader>e", group = "Explorer" },
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git Signs" },
      { "<leader>h", group = "Harpoon" },
      { "<leader>l", group = "LazyGit" },
      { "<leader>m", group = "Formater" },
      { "<leader>r", group = "LSP Rename" },
      { "<leader>s", group = "Split screen" },
      { "<leader>t", group = "Tabs" },
      { "<leader>w", group = "Restore Session" },
      { "<leader>x", group = "Diagnostics" },
    })
  end,
}
