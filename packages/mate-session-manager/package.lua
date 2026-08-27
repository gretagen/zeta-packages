return {
  name    = "mate-session-manager",
  version = "1.28.0",
  summary = "MATE session manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-session-manager/mate-session-manager-1.28.0.tar.gz",
  sha256  = "383323bffe2eb4efc021e4e4fdd682beba53258e150edbfc04572ff783b230f9",
  deps    = { "glibc", "glib", "gtk3", "dbus-glib", "libX11", "libSM", "libICE", "libXext", "libXau", "libXcomposite", "libepoxy", "mesa-drivers", "xtrans" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-session")
  end,
}
