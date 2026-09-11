return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "dd2364739ddd12f046ce022cab9812fa0b2f36863ccf2775e9f104caacc14f54",
  deps    = { "glibc", "pam", "libcap", "libcap-ng", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
