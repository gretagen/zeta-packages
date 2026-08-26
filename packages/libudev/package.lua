return {
  name    = "libudev",
  version = "3.2.14",
  summary = "udev library and udevadm (eudev)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libudev/libudev-3.2.14.tar.gz",
  sha256  = "67381fb4888e624a3e5de7b5725ca23b9aea7a14b62ebcf0d8b0f6e09369b18d",
  deps    = { "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libudev.so.1")
  end,
}
