return {
  name    = "fetch",
  version = "2.3.0",
  summary = "Animated 3D fetch tool for your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fetch/fetch-2.3.0.tar.gz",
  sha256  = "7935ac15a3a6714d94556982f208ac6a57a11b46c80ba0d9eb6f5d2213273f6c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fetch && test -x " .. p.install_root .. "/usr/bin/fetch.bin && test -f " .. p.install_root .. "/usr/share/fetch/config && test -f " .. p.install_root .. "/usr/share/fetch/logo.txt")
  end,
}
