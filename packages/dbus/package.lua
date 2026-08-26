return {
  name    = "dbus",
  version = "1.16.2",
  summary = "D-Bus message bus system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/dbus/dbus-1.16.2.tar.gz",
  sha256  = "48f9daccbd12643706eb65ef8ffad94f1fde6c14ce8850369e411e5b045929e1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test -e " .. p.install_root .. "/usr/lib/libdbus-1.so")
  end,
}
