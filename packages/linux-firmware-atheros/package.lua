return {
  name    = "linux-firmware-atheros",
  version = "0.20260825",
  summary = "atheros firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-atheros-0.20260825.tar.gz",
  sha256  = "60f39bb019a4d50f9d12cfc1213864f3c5ac960d05e67714bf55d2e0a267685e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
