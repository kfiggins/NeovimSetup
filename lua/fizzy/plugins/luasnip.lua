return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  config = function()
    -- Load LuaSnip snippets
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/fizzy/snippets/" })
    require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/lua/fizzy/snippets/" })

    -- LuaSnip configuration
    require("luasnip").config.setup({
      update_events = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })

    -- Set up keymaps for LuaSnip
    local ls = require("luasnip")

    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true, desc = "LuaSnip expand or jump" })

    vim.keymap.set({ "i", "s" }, "<C-j>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true, desc = "LuaSnip jump back" })

    vim.keymap.set("i", "<C-l>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { silent = true, desc = "LuaSnip change choice" })
  end,
}
