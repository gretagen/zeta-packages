return {
  name    = "linux-firmware-nvidia",
  version = "0.20260825",
  summary = "nvidia firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-nvidia-0.20260825.tar.gz",
  sha256  = "6b71d086d0a6e5fcd249aa0db88772223d30433190812b9ab835d3ea29da3f38",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
