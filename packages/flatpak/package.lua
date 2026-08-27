return {
  name    = "flatpak",
  version = "1.18.0",
  summary = "Linux application sandboxing and distribution framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/flatpak/flatpak-1.18.0.tar.gz",
  sha256  = "583fd4db00e88c2216fe3e86d34398413c33327378dc08f1ec340c32db28e7e0",
  deps    = { "glibc", "libostree", "libdconf", "libappstream", "libcurl", "libxml2", "libarchive", "libseccomp", "libfuse3", "libjson-glib", "gpgme", "gnupg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/flatpak")
  end,
}
