return {
  name    = "mate-utils",
  version = "1.28.0",
  summary = "MATE system utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-utils/mate-utils-1.28.0.tar.gz",
  sha256  = "6fac198fc8758d8cc304fe2e0a768665ab4ac1e2208d3fc5691cba749317d892",
  deps    = { "glibc", "gtk3", "mate-desktop", "libgtop", "libcanberra", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mate-disk-usage-analyzer -a -x " .. p.install_root .. "/usr/bin/mate-screenshot -a -x " .. p.install_root .. "/usr/bin/mate-dictionary")
  end,
}
