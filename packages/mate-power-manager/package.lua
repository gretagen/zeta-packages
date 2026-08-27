return {
  name    = "mate-power-manager",
  version = "1.28.1",
  summary = "MATE power manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-power-manager/mate-power-manager-1.28.1.tar.gz",
  sha256  = "a55a43f644db0e90f391831154c4a388a853a4ac1b4c75b34ff21e331238c017",
  deps    = { "glibc", "glib", "gtk3", "dbus-glib", "dbus", "cairo", "mate-desktop", "libnotify", "libcanberra", "upower", "libX11", "libXext", "libXrandr", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-power-manager -a -f " .. p.install_root .. "/usr/libexec/mate-brightness-applet")
  end,
}
