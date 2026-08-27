return {
  name    = "marco",
  version = "1.28.1",
  summary = "MATE window manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/marco/marco-1.28.1.tar.gz",
  sha256  = "fce53fd550c939e8506d490c814a1cffebc38edb695f9cfcf948f4bbfbb48431",
  deps    = { "glibc", "glib", "gtk3", "pango", "mate-desktop", "libcanberra", "startup-notification", "libXres", "libXcomposite", "libXrender", "libXcursor", "libXrandr", "libXinerama", "libXpresent" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmarco-private.so")
  end,
}
