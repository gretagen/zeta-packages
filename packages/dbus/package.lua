return {
  name    = "dbus",
  version = "1.16.2",
  summary = "D-Bus message bus system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/dbus/dbus-1.16.2.tar.xz",
  sha256  = "503662d37a289de9ece7fb9cd6d08628ae6b96881f6df747300c9b585017f002",
  deps    = { "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test -e " .. p.install_root .. "/usr/lib/libdbus-1.so")
  end,
}
