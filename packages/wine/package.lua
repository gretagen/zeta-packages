return {
  name    = "wine",
  version = "11.0",
  summary = "Compatibility layer for running Windows applications",
  url     = "https://dl.winehq.org/wine/source/11.0/wine-11.0.tar.xz",
  sha256  = "c07a6857933c1fc60dff5448d79f39c92481c1e9db5aa628db9d0358446e0701",
  arch    = "x86_64",
  deps    = { "glibc", "alsa-lib", "dbus", "fontconfig", "freetype", "gnutls", "libX11", "libXcomposite", "libXcursor", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libXrender", "libxcb", "llvm-mingw", "make", "pulseaudio", "sdl2", "vulkan-loader", "wayland", "xkbcommon" },
  build   = function(p)
    p:run("./configure --prefix=/usr --enable-archs=i386,x86_64 --without-oss")
    p:make()
    p:make("install", "DESTDIR=" .. p.install_root)
  end,
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/wine --version")
  end,
}
