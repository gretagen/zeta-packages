return {
  name    = "glibc",
  version = "2.43",
  summary = "GNU C Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glibc/glibc-2.43.tar.gz",
  sha256  = "6ca0cf51f08d831be15a4155c91a87ef87bb6d1f7c22839569d1d8df90f6ae70",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/lib64/ld-linux-x86-64.so.2 && test -e " .. p.install_root .. "/lib64/libc.so.6")
  end,
}
