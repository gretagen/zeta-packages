return {
  name    = "genkernel",
  version = "1.0",
  summary = "Zerene OS kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genkernel/genkernel-1.0.tar.gz",
  sha256  = "9441366b7fa6feb4fbe3ad8c9a8f7c538f04928cc58f682f88269d4c9f444897",
  deps    = { "bash", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
