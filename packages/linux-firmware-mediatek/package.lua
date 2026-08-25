return {
  name    = "linux-firmware-mediatek",
  version = "0.20260825",
  summary = "mediatek firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-mediatek-0.20260825.tar.gz",
  sha256  = "4d5c7b63c4266e9c43a6cbf094b4e96fe5a6d432d7ff389667c6e805d392d6ca",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
