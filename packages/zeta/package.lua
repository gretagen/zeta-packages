return {
  name    = "zeta",
  version = "1.0.6",
  summary = "Zeta package manager for Heliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.6.tar.gz",
  sha256  = "012ea1205e23442c59602127a861175b5cf25a7dd3b7e3ec38d27d4222bf7ccc",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
