return {
  name    = "libmatekbd",
  version = "1.28.0",
  summary = "MATE keyboard configuration library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libmatekbd/libmatekbd-1.28.0.tar.gz",
  sha256  = "b97bd5c7f8629846f502e5962d725ee531855a07a367c5fd223f91e12b848444",
  deps    = { "glibc", "glib", "gtk3", "libxklavier" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmatekbd.so")
  end,
}
