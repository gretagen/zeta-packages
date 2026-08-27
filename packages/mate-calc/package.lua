return {
  name    = "mate-calc",
  version = "1.28.0",
  summary = "MATE calculator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-calc/mate-calc-1.28.0.tar.gz",
  sha256  = "f8e123fa731acd8b2b10d1cea1765f950f2c1beb4a2d88b1421d904b6a4292a6",
  deps    = { "glibc", "gtk3", "mpfr", "mpc", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mate-calc -a -x " .. p.install_root .. "/usr/bin/mate-calc-cmd")
  end,
}
