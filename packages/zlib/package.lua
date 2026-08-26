return {
  name    = "zlib",
  version = "1.3.2",
  summary = "Compression library (zlib)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zlib/zlib-1.3.2.tar.gz",
  sha256  = "6e5e431a0e75f823811c8cb542187d6fd8f74e93dfa5f3c12d2c86d3a230b8fa",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libz.so.1")
  end,
}
