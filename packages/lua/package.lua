return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 shared library (liblua) for embedding",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "7ce0caf8bbfdb3fa0f3adeceaaa705545aee5963e4dccf87b17ae161b5bf63a1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so.5.5")
  end,
}
