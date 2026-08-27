return {
  name    = "gcc-libs",
  version = "15.2",
  summary = "GCC support libraries (libgomp, libgcc_s, libstdc++)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gcc-libs/gcc-libs-15.2.tar.gz",
  sha256  = "cd45e484b6a87cc17654018625527a0ea707389573b6cb077b764e2739a2c911",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgomp.so.1")
  end,
}
