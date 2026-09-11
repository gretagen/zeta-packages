return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "84cd82cfdce2e4518af58ab83606bdc6916ec9448ccc06f3dbb399a7c2bb5cfc",
  deps    = { "glibc", "pam", "libcap", "libcap-ng", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
