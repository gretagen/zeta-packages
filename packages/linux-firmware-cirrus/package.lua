return {
  name    = "linux-firmware-cirrus",
  version = "0.20260825",
  summary = "cirrus firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-cirrus-0.20260825.tar.gz",
  sha256  = "b984b657f1f847ae0df89da98f62bbfee3bf1a41a13ed74a070a5a4f5e382060",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
