return {
  name    = "mate-menus",
  version = "1.28.0",
  summary = "MATE menu system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-menus/mate-menus-1.28.0.tar.gz",
  sha256  = "dbcd56580c6d076e9ef1cdd6dcc0ad9e6353c34d8c0e052c6002760f3297b394",
  deps    = { "glibc", "glib", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/etc/xdg/menus/mate-applications.menu")
  end,
}
