return {
  name    = "iwd",
  version = "3.12",
  summary = "Wireless daemon (iNet Wireless Daemon)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/iwd/iwd-3.12.tar.gz",
  sha256  = "b71112743b3eba2ab50aa4730882ca2c65ca2881fdd2eb285b00f5e458668fa9",
  deps    = { "glibc", "ell" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/iwd")
  end,
}
