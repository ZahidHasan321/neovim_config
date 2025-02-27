require("luasnip.session.snippet_collection").clear_snippets("cpp")
local luasnip = require("luasnip")

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

luasnip.add_snippets("cpp", {
  s("cpmain", {
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "int main(){",
      "int t;",
      "cin >> t;",
      "while(t--){",
      "",
    }),
    i(1, "START"),
    t({ "", "}", "}" }),
  }),
})
