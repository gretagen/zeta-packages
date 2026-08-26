return {
  name    = "networkmanager",
  version = "1.51.4",
  summary = "Network connection manager and daemon (nmcli, nmtui)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/networkmanager/NetworkManager-1.51.4.tar.gz",
  sha256  = "b0dd5c2c41acf6d0475dbfe95ba37c529cee6459ce2e6c101e3238d7eaffdfed",
  deps    = { "dbus", "glib", "libudev", "polkit", "gnutls" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/NetworkManager && test -x " .. p.install_root .. "/usr/bin/nmcli")
  end,
}
