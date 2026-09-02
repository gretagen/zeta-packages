return {
  name    = "zeta",
  version = "1.0.6",
  summary = "Zeta package manager for Zerene OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.6.tar.gz",
  sha256  = "275309fdd00c04d2a8df26b1774e510f65dfaffb8d01dd2d578e70ab04eb668f",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
