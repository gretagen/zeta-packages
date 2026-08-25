return {
  name    = "linux-firmware-radeon",
  version = "0.20260825",
  summary = "radeon firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-radeon-0.20260825.tar.gz",
  sha256  = "546b060934c4092428cddf9fad6a511cb753c75a61c0d222db8af3f5dcdb65a4",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
