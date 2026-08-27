return {
  name    = "libjpeg-turbo",
  version = "1.5.3",
  summary = "MMX/SSE2/SMID accelerated library for JPEG images",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libjpeg-turbo/libjpeg-turbo-1.5.3.tar.gz",
  sha256  = "2e29b57d69c2f498cbb7de1c158501dc6baf9686965bcebe79307b126e64c89c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libjpeg.so.62")
  end,
}
