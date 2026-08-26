return {
  name    = "zeta",
  version = "1.0.3",
  summary = "Zeta package manager for Zerene OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.3.tar.gz",
  sha256  = "40c0ee09be74421fd5d5931afb3741cc796623602f5e921cc5fe970e3cb9ea9f",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && test -f " .. p.install_root .. "/usr/lib/zeta/lib/hooks.lua")
  end,
}
