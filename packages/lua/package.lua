return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 scripting language interpreter and shared library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "7f6ca103d19ea8cc65d88cb97a4623fc19f8316ecf31990ef6e7a574f0684822",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so.5.5 && test -f " .. p.install_root .. "/usr/bin/lua5.5")
  end,
}
