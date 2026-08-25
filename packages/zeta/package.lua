return {
  name    = "zeta",
  version = "1.0.1",
  summary = "Zeta package manager for Zerene OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.1.tar.gz",
  sha256  = "2ae8fb884a5c7fca40b24c3bc1e6fbfe3544355dc07050da0a9e0b48bded3580",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && test -f " .. p.install_root .. "/usr/lib/zeta/lib/commit.lua")
  end,
}
