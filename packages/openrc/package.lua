return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager for Heliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "cfcf20df76dc104a2ddfb5b584da3036bf5509c47345fce181427c4b0abc042b",
  deps    = { "glibc", "pam", "libcap", "libcap-ng", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
