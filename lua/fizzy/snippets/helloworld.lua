local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", { -- Use 'all' for global snippets
  s("trigger", { -- Snippet trigger
    t("Hello "), -- Static text
    i(1, "world"), -- Placeholder with default text
    t("!"), -- Static text
  }),
})
