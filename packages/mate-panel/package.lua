return {
  name    = "mate-panel",
  version = "1.28.4",
  summary = "MATE desktop panel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-panel/mate-panel-1.28.4.tar.gz",
  sha256  = "1be570751ab22197fb91a514249f0fde57f0f591fcce421f6b52b70463ccd5a0",
  deps    = { "glibc", "glib", "gtk3", "gdk-pixbuf", "pango", "mate-desktop", "mate-menus", "libmateweather", "libwnck3", "libdconf", "libICE", "libSM", "cairo" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-panel -a -f " .. p.install_root .. "/usr/lib/libmate-panel-applet-4.so")
  end,
}
