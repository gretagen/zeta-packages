return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager (zerene-branded)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "d01b643a28696bcb10bff030aaed5909b56cbce7fbe241464c6078db96f75c0f",
  deps    = { "pam" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
