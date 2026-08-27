return {
  name    = "mate-notification-daemon",
  version = "1.28.3",
  summary = "MATE notification daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-notification-daemon/mate-notification-daemon-1.28.3.tar.gz",
  sha256  = "b5a6b1c1c4d0cad08f38bf78702dbb77ece5e5981d745b429336ec1d7eb012e8",
  deps    = { "glibc", "glib", "gtk3", "libnotify", "libcanberra", "mate-desktop", "mate-panel", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/mate-notification-daemon")
  end,
}
