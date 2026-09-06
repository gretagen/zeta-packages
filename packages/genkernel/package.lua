return {
  name    = "genkernel",
  version = "1.0",
  summary = "Heliade OS kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genkernel/genkernel-1.0.tar.gz",
  sha256  = "c2de8fc1e0191321a0bd5e3549f8680632ca3a59bacd619ea36a70fa9cb81ed3",
  deps    = { "bash", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
