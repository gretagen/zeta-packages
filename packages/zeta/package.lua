return {
  name    = "zeta",
  version = "1.0.6",
  summary = "Zeta package manager for Zerene OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.6.tar.gz",
  sha256  = "e32e52c19636d8ddee15c081381201b9586ebc8ba0485da2cbb57e603c41a64e",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
