local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

ls.add_snippets("javascript", {
  s(
    "webReactComponent",
    fmt(
      [[
    import React from "react";
    import {{ View, useStyles }} from "@applause-hq/react-web";
    import styles from "./styles";

    const {} = ({{className, ...props}}) => {{
      const {{ classes, cx }} = useStyles(styles);

      return (
        <View className={{cx(classes.root, className)}} {{...props}}>

        </View>
      );
    }}

    {}.defaultProps = {{
      className: '',
    }};

    export default {};
  ]],
      {
        i(1, "ComponentName"), -- Insertion point for the component name
        rep(1), -- Repeat the component name wherever required
        rep(1),
      }
    )
  ),
})
