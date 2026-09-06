return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager for Heliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "5b35dd5d6cf0e87e1def7faf3c2de733720d1ffeba7c3bbde132c30bb62a9033",
  deps    = { "glibc", "pam", "libcap", "libcap-ng", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
