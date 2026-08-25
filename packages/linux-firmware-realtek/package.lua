return {
  name    = "linux-firmware-realtek",
  version = "0.20260825",
  summary = "realtek firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-realtek-0.20260825.tar.gz",
  sha256  = "d9f9a2eedc4ff60f0e13439fabd5405718978d03034982b3155cc9db00d6d5e2",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
