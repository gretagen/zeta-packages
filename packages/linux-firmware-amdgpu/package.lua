return {
  name    = "linux-firmware-amdgpu",
  version = "0.20260825",
  summary = "amdgpu firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-amdgpu-0.20260825.tar.gz",
  sha256  = "bfb3cd1a647a2478418698c63845ea033c07d873b9ab56d8883532cddc10ad9f",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
