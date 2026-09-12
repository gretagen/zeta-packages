return {
  name    = "spotify-client",
  version = "1.2.96",
  summary = "Spotify streaming music client",
  url     = "https://github.com/gretagen/zeta-artifacts/releases/download/spotify-1.2.96/spotify.deb",
  sha256  = "1a86581f53c2b0e2c406150665ea05e245b9e6b286390ea61d5d193ba617eb2f",
  deps    = { "glibc", "alsa-lib", "gtk3", "libX11", "libXtst", "libxss", "nss", "glib", "at-spi2-core", "libxcb", "xkbcommon", "mesa-drivers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/spotify")
  end,
}
