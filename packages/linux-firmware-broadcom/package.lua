return {
  name    = "linux-firmware-broadcom",
  version = "0.20260825",
  summary = "broadcom firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-broadcom-0.20260825.tar.gz",
  sha256  = "913ec875842e0994aef87b45a71bea5311c8ebb3c786ae203ebf479c7b3ffe8b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
