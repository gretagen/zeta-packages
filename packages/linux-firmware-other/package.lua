return {
  name    = "linux-firmware-other",
  version = "0.20260825",
  summary = "other firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-other-0.20260825.tar.gz",
  sha256  = "ffe13b3be00c4869db0454d8e67d5936223ea72e69b69cd6219d43455a1a72ec",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
