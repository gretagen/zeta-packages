return {
  name    = "linux-headers",
  version = "7.1.10",
  summary = "Prepared 7.1.10-gen kernel tree for out-of-tree module builds",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-headers-7.1.10.tar.gz",
  sha256  = "08642b3498b72a273a3458ee4ca253f5d2ce4266ccd134ab0dd9570931c5d65c",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/lib/modules/7.1.10-gen/build/Makefile")
  end,
}
