return {
  name    = "caja",
  version = "1.28.0",
  summary = "MATE file manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/caja/caja-1.28.0.tar.gz",
  sha256  = "3020c4d2bc7752daac7b789a4e7728c144fbbdcbfdc718fa69460fadcf3876db",
  deps    = { "glibc", "glib", "gtk3", "gdk-pixbuf", "pango", "mate-desktop", "libnotify", "libxml2", "libexif", "libICE", "libSM", "libdconf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/caja -a -f " .. p.install_root .. "/usr/lib/libcaja-extension.so.1")
  end,
}
