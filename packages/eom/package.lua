return {
  name    = "eom",
  version = "1.28.0",
  summary = "Eye of MATE image viewer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/eom/eom-1.28.0.tar.gz",
  sha256  = "a9e3c61ea8f4fd09a9b6417522f1ac704dca5dfb6c8461db42baf4e396df7d1f",
  deps    = { "glibc", "gtk3", "mate-desktop", "libpeas", "shared-mime-info", "libexif", "libjpeg-turbo", "librsvg", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/eom -a -f " .. p.install_root .. "/usr/lib/eom/plugins/libfullscreen.so")
  end,
}
