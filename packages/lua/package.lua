return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 shared library (liblua) for embedding",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "bba0351ca927c7712a3abfe075fcea8c6043c8ac49201f665809ad9b58d8cfa2",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so.5.5")
  end,
}
