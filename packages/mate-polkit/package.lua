return {
  name    = "mate-polkit",
  version = "1.28.1",
  summary = "MATE PolicyKit authentication agent",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-polkit/mate-polkit-1.28.1.tar.gz",
  sha256  = "ccbc92f23126f2c946f88fe6ee71aabfef359b418568af8e6602d8990df560c7",
  deps    = { "glibc", "glib", "gtk3", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/polkit-mate-authentication-agent-1 -a -f " .. p.install_root .. "/etc/xdg/autostart/polkit-mate-authentication-agent-1.desktop")
  end,
}
