return {
  name    = "linux-firmware",
  version = "0.20260825",
  summary = "Linux kernel firmware blobs (metapackage)",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-0.20260825.tar.gz",
  sha256  = "7923b7ce1d82eb8cfad866498eca784f100539976f6108567c8c460ae874e457",
  deps    = { "linux-firmware-amdgpu", "linux-firmware-atheros", "linux-firmware-broadcom", "linux-firmware-cirrus", "linux-firmware-intel", "linux-firmware-mediatek", "linux-firmware-nvidia", "linux-firmware-other", "linux-firmware-radeon", "linux-firmware-realtek", "rtw89" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/zeta/linux-firmware")
  end,
}
