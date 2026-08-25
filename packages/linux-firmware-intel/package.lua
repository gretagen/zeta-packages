return {
  name    = "linux-firmware-intel",
  version = "0.20260825",
  summary = "intel firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-firmware-intel-0.20260825.tar.gz",
  sha256  = "fba0bfbd9693d4176abd2f78bdec4bdada8118bde46116102a8425a856be85ad",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
