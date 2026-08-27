return {
  name    = "discord",
  version = "1.0.152",
  summary = "Discord (stable Electron client)",
  url     = "https://media.githubusercontent.com/media/gretagen/zeta-artifacts/refs/heads/main/packages/discord/discord-1.0.152.tar.gz",
  sha256  = "5d5c9b3dbc83500a9bf76723b400fec8b36316ae8b31379829d0d0296e9776e4",
  deps    = { "glibc", "alsa-lib", "at-spi2-core", "cairo", "expat", "glib", "gtk3", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXrandr", "libXrender", "libxss", "libXtst", "libdrm", "libxcb", "mesa-drivers", "nss", "pango", "pulseaudio", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/discord")
  end,
}
