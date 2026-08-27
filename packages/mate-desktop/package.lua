return {
  name    = "mate-desktop",
  version = "1.28.2",
  summary = "MATE desktop library and GSettings schemas",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-desktop/mate-desktop-1.28.2.tar.gz",
  sha256  = "a43a0710886c967fd433df67cdfa34a7be59624b208c9b9171bc2738dd092c61",
  deps    = { "glibc", "glib", "gtk3", "gdk-pixbuf", "startup-notification", "iso-codes", "libdconf", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmate-desktop-2.so")
  end,
}
