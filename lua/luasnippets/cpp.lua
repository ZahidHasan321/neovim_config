require("luasnip.session.snippet_collection").clear_snippets("cpp")
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
  -- main without test cases
  s("cpmain", {
    t({ "#include <bits/stdc++.h>", "using namespace std;", "" }),
    t({ "void solve() {" }),
    t({ "    " }),
    i(1),
    t({ "", "}", "" }),
    t({ "int main() {" }),
    t({ "    ios::sync_with_stdio(false);", "    cin.tie(nullptr);", "" }),
    t({ "    solve();", "    return 0;", "}" }),
  }),

  -- main with test cases
  s("tc_cpmain", {
    t({ "#include <bits/stdc++.h>", "using namespace std;", "" }),
    t({ "void solve() {" }),
    t({ "    " }),
    i(1),
    t({ "", "}", "" }),
    t({ "int main() {" }),
    t({ "    ios::sync_with_stdio(false);", "    cin.tie(nullptr);", "" }),
    t({ "    int tt; cin >> tt;", "    while (tt--) {" }),
    t({ "        solve();", "    }", "    return 0;", "}" }),
  }),

  -- headers and macros
  s("cphead", {
    t({
      "#define int long long",
      "#define all(x) x.begin(), x.end()",
      "#define endl '\\n'",
      "typedef vector<int> vi;",
      "typedef pair<int, int> pii;",
      "typedef long long ll;",
      "const int INF = 1e18;",
      "const int MOD = 1e9 + 7;",
      "const int N = 2e5 + 5;",
      "",
    }),
  }),

  -- vector input
  s("vin", {
    t("for (auto &x : "),
    i(1, "vec"),
    t(") cin >> x;"),
  }),

  -- gcd/lcm
  s("mathutil", {
    t({
      "int gcd(int a, int b) { return b ? gcd(b, a % b) : a; }",
      "int lcm(int a, int b) { return a / gcd(a, b) * b; }",
      "",
    }),
  }),

  -- debug macro

  s("debug", {
    t({
      "void __print(int x) { cerr << x; }",
      "void __print(long x) { cerr << x; }",
      "void __print(long long x) { cerr << x; }",
      "void __print(unsigned x) { cerr << x; }",
      "void __print(unsigned long x) { cerr << x; }",
      "void __print(unsigned long long x) { cerr << x; }",
      "void __print(float x) { cerr << x; }",
      "void __print(double x) { cerr << x; }",
      "void __print(long double x) { cerr << x; }",
      "void __print(char x) { cerr << '\\'' << x << '\\''; }",
      "void __print(const char *x) { cerr << '\"' << x << '\"'; }",
      "void __print(const string &x) { cerr << '\"' << x << '\"'; }",
      'void __print(bool x) { cerr << (x ? "true" : "false"); }',
      "",
      "template<typename T, typename V>",
      "void __print(const pair<T, V> &x) { cerr << '{'; __print(x.first); cerr << ','; __print(x.second); cerr << '}'; }",
      "template<typename T>",
      'void __print(const T &x) { int f = 0; cerr << \'{\'; for (auto &i: x) cerr << (f++ ? "," : ""), __print(i); cerr << "}"; }',
      "",
      'void _print() { cerr << "]\\n"; }',
      "template<typename T, typename... V>",
      'void _print(T t, V... v) { __print(t); if (sizeof...(v)) cerr << ", "; _print(v...); }',
      "",
      "#ifndef ONLINE_JUDGE",
      '  #define debug(x...) cerr << "[" << #x << "] = ["; _print(x)',
      "#else",
      "  #define debug(x...)",
      "#endif",
      "",
    }),
  }),
})
