return {
  name    = "zeta",
  version = "1.0.4",
  summary = "Zeta package manager for Zerene OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.4.tar.gz",
  sha256  = "2bca97aa6e8f9d3cfdc484b7399c7d101cf0fe00901e04ebd73964f700b886ec",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua")
  end,
}
