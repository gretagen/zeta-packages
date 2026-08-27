return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager (zerene-branded)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "b40cda6aea435274f49719fd274c855a39d4c1b4d9c9223daf3dc0413dfc365b",
  deps    = { "glibc", "pam" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
